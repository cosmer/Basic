//
//  Created by Charlie Osmer on 8/11/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import UIKit
import Combine

public final class LoadableImage: ObservableObject {
    @Published public var image: UIImage? = nil

    private let url: URL?
    private var cancellable: AnyCancellable?

    public init(url: URL) {
        self.url = url
    }

    public init(asset: LoadableImageAsset) {
        switch asset {
        case .url(let url):
            self.url = url
        case .image(let image):
            self.image = image
            url = nil
        case .name(let name):
            self.image = UIImage(named: name)
            url = nil
        }
    }

    public func load() {
        dispatchPrecondition(condition: .onQueue(.main))

        if image != nil || cancellable != nil {
            return
        }

        guard let url = url else {
            return
        }

        switch ImageLoader.shared.image(at: url) {
        case .image(let image):
            self.image = image
        case .publisher(let publisher):
            cancellable = publisher
                .receive(on: RunLoop.main)
                .sink(
                    receiveCompletion: { [unowned self] in
                        self.cancellable = nil

                        if case let .failure(error) = $0 {
                            Self.logError(error)
                        }
                    },
                    receiveValue: { [unowned self] in
                        self.image = $0
                    }
                )
        }
    }
}

extension LoadableImage {
    public typealias ErrorLogger = (Error) -> Void

    private static var logError: ErrorLogger = { _ in }

    public static func setErrorLogger(_ logger: @escaping ErrorLogger) {
        logError = logger
    }
}
