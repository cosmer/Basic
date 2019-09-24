//
//  Created by Charlie Osmer on 8/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import Combine
import API

final class ForecastDiscussionViewModel: ObservableObject {
    @Published var text: Result<NSAttributedString, Error> = .success(.init())
    @Published var isLoading = false

    private let model: ForecastDiscussionModel

    private var cancellable: AnyCancellable?

    init(model: ForecastDiscussionModel) {
        self.model = model
    }

    /// For previews.
    convenience init(model: ForecastDiscussionModel, text: Result<String, Error>) {
        self.init(model: model)

        self.text = text.map { NSAttributedString(string: $0, attributes: Self.bodyAttributes) }
        cancellable = AnyCancellable({ })
    }

    struct NotAvailableError: LocalizedError {
        var errorDescription: String? {
            NSLocalizedString("Forecast discussions are not currently available at this location.", comment: "")
        }
    }

    private static var bodyAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.preferredFont(forTextStyle: .body)
    ]

    private static var preambleAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.preferredFont(forTextStyle: .callout)
    ]

    private static var headerAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.preferredFont(forTextStyle: .headline)
    ]

    func load() {
        if cancellable != nil {
            return
        }

        isLoading = true

        let endpoint = Endpoints.products(officeId: model.officeId, code: .forecastDiscussion)
        cancellable = URLSession.shared.dataTaskPublisher(for: endpoint)
            .tryMap { (products) -> ProductsModel.Product in
                guard let product = products.products.first else {
                    throw NotAvailableError()
                }
                return product
            }
            .flatMap { (product) -> AnyPublisher<ProductModel, Error> in
                let endpoint = Endpoints.product(id: product.id)
                return URLSession.shared.dataTaskPublisher(for: endpoint)
            }
            .map { (product) -> NSAttributedString in
                let defaultAttributes = Self.bodyAttributes
                let preambleAttributes = Self.preambleAttributes
                let headerAttributes = Self.headerAttributes

                let text = NSMutableAttributedString()
                ForecastDiscussionParser.shared.parse(product.productText) { (type, segment) in
                    switch type {
                    case .preamble:
                        text.append(NSAttributedString(string: segment, attributes: preambleAttributes))
                    case .sectionHeader:
                        let content = segment + "\n"
                        text.append(NSAttributedString(string: content, attributes: headerAttributes))
                    case .sectionSeparator:
                        let content = "\n\n"
                        text.append(NSAttributedString(string: content, attributes: defaultAttributes))
                    case .body:
                        text.append(NSAttributedString(string: segment, attributes: defaultAttributes))
                    }
                }

                let textRange = NSRange(location: 0, length: text.length)
                text.addAttribute(.foregroundColor, value: UIColor.label, range: textRange)

                return text
            }
            .materialize()
            .receive(on: RunLoop.main)
            .sink { [unowned self] (text) in
                self.isLoading = false
                self.text = text
            }
    }
}
