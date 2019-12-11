//
//  Created by Charlie Osmer on 8/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import Combine
import API
import OhNo

struct ForecastDiscussionViewModel {
    let text: NSAttributedString

    struct NotAvailableError: LocalizedError {
        var errorDescription: String? {
            NSLocalizedString("Forecast discussions are not currently available at this location.", comment: "")
        }
    }

    fileprivate static var errorLog: ScopedErrorLog {
        ErrorLog.default.scoped(to: "ForecastDiscussionViewModel")
    }

    private static var bodyAttributes: [NSAttributedString.Key: Any] {
        [.font: UIFont.preferredFont(forTextStyle: .body)]
    }

    private static var preambleAttributes: [NSAttributedString.Key: Any] {
        [.font: UIFont.preferredFont(forTextStyle: .callout)]
    }

    private static var headerAttributes: [NSAttributedString.Key: Any] {
        [.font: UIFont.preferredFont(forTextStyle: .headline)]
    }

    private static var paragraphTitleAttributes: [NSAttributedString.Key: Any] {
        [.font: UIFont.preferredFont(forTextStyle: .subheadline)]
    }

    init(productText: String) {
        let defaultAttributes = Self.bodyAttributes
        let preambleAttributes = Self.preambleAttributes
        let headerAttributes = Self.headerAttributes
        let paragraphTitleAttributes = Self.paragraphTitleAttributes

        let text = NSMutableAttributedString()
        ForecastDiscussionParser(discussion: productText).parse { (type, segment) in
            switch type {
            case .preamble:
                text.append(NSAttributedString(string: segment, attributes: preambleAttributes))
            case .sectionHeader:
                let content = segment + "\n"
                text.append(NSAttributedString(string: content, attributes: headerAttributes))
            case .sectionSeparator:
                let content = "\n\n"
                text.append(NSAttributedString(string: content, attributes: defaultAttributes))
            case .paragraphTitle:
                let content = segment + "\n"
                text.append(NSAttributedString(string: content, attributes: paragraphTitleAttributes))
            case .body, .footer:
                text.append(NSAttributedString(string: segment, attributes: defaultAttributes))
            }
        }

        let textRange = NSRange(location: 0, length: text.length)
        text.addAttribute(.foregroundColor, value: UIColor.label, range: textRange)

        self.text = text
    }
}

typealias LoadableForecastDiscussionViewModel = LoadableResultViewModel<ForecastDiscussionViewModel>

extension LoadableResultViewModel where Value == ForecastDiscussionViewModel {
    /// For previews.
    convenience init(productText: String) {
        let publisher = Just(productText)
            .map(ForecastDiscussionViewModel.init)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()

        self.init(publisher: publisher)
    }

    convenience init(officeId: OfficeID) {
        let publisher = URLSession.shared
            .dataTaskPublisher(for: Endpoints.products(officeId: officeId, code: .forecastDiscussion))
            .tryMap { (products) -> ProductsModel.Product in
                guard let product = products.products.first else {
                    throw ForecastDiscussionViewModel.NotAvailableError()
                }
                return product
            }
            .flatMap { (product) -> AnyPublisher<ProductModel, Error> in
                let endpoint = Endpoints.product(id: product.id)
                return URLSession.shared.dataTaskPublisher(for: endpoint)
            }
            .map { ForecastDiscussionViewModel(productText: $0.productText) }
            .handleError { ForecastDiscussionViewModel.errorLog.log($0) }
            .eraseToAnyPublisher()

        self.init(publisher: publisher)
    }
}
