//
//  Created by Charlie Osmer on 8/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import Combine
import API
import OhNo

final class ForecastDiscussionViewModel {
    private let officeId: OfficeID

    init(officeId: OfficeID) {
        self.officeId = officeId
    }

    /// For previews.
    convenience init(officeId: OfficeID, text: LoadableResult<String, Error>) {
        self.init(officeId: officeId)

        self.text = CurrentValueSubject(text.map { NSAttributedString(string: $0, attributes: Self.bodyAttributes) })
            .eraseToAnyPublisher()
    }

    struct NotAvailableError: LocalizedError {
        var errorDescription: String? {
            NSLocalizedString("Forecast discussions are not currently available at this location.", comment: "")
        }
    }

    private static var errorLog: ScopedErrorLog {
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

    private(set) lazy var text: AnyPublisher<LoadableResult<NSAttributedString, Error>, Never> =
        URLSession.shared.dataTaskPublisher(for: Endpoints.products(officeId: officeId, code: .forecastDiscussion))
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
            let paragraphTitleAttributes = Self.paragraphTitleAttributes

            let text = NSMutableAttributedString()
            ForecastDiscussionParser(discussion: product.productText).parse { (type, segment) in
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

            return text
        }
        .handleError { Self.errorLog.log($0) }
        .map { LoadableResult.success($0) }
        .catch { Just(LoadableResult.failure($0)) }
        .receive(on: RunLoop.main)
        .multicast(subject: CurrentValueSubject(.loading))
        .autoconnect()
        .eraseToAnyPublisher()
}
