//
//  Created by Charlie Osmer on 8/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine
import API

final class ForecastDiscussionViewModel: ObservableObject {
    @Published var text: Result<String, Error> = .success("")

    private let model: ForecastDiscussionModel

    private var cancellable: AnyCancellable?

    init(model: ForecastDiscussionModel) {
        self.model = model
    }

    /// For previews.
    convenience init(model: ForecastDiscussionModel, text: Result<String, Error>) {
        self.init(model: model)

        self.text = text
        cancellable = AnyCancellable({ })
    }

    struct NotAvailableError: LocalizedError {
        var errorDescription: String? {
            NSLocalizedString("Forecast discussions are not currently available at this location.", comment: "")
        }
    }

    func load() {
        if cancellable != nil {
            return
        }

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
            .map(\.productText)
            .materialize()
            .receive(on: RunLoop.main)
            .sink { [unowned self] in self.text = $0 }
    }
}
