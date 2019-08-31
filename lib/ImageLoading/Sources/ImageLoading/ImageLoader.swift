//
//  Created by Charlie Osmer on 8/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import UIKit
import Combine

public final class ImageLoader {
    public static let shared = ImageLoader()

    public typealias ErrorLogger = (Error) -> Void

    typealias ImagePublisher = AnyPublisher<UIImage, Never>

    private var images: [URL: UIImage] = [:]
    private var publishers: [URL: ImagePublisher] = [:]
    private var cancellables: [URL: AnyCancellable] = [:]

    private var logError: ErrorLogger = { _ in }

    public init() { }

    public func setErrorLogger(_ logger: @escaping ErrorLogger) {
        logError = logger
    }

    func cachedImage(at url: URL) -> UIImage? {
        return images[url]
    }

    func image(at url: URL) -> ImagePublisher {
        if let publisher = publishers[url] {
            return publisher
        }

        let resultSubject = CurrentValueSubject<UIImage?, Never>(nil)
        let resultPublisher = resultSubject
            .compactMap { $0 }
            .eraseToAnyPublisher()

        publishers[url] = resultPublisher

        let cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data, response) -> Data in
                if let response = response as? HTTPURLResponse {
                    if response.statusCode < 200 || response.statusCode >= 300 {
                        throw HTTPError(statusCode: response.statusCode, url: url)
                    }
                }
                return data
            }
            .tryMap { (data) -> UIImage in
                guard let image = UIImage(data: data) else {
                    throw InvalidImageError(url: url)
                }
                return image
            }
            .receive(on: RunLoop.main)
            .sink(
                receiveCompletion: { (completion) in
                    self.publishers.removeValue(forKey: url)
                    self.cancellables.removeValue(forKey: url)

                    if case let .failure(error) = completion {
                        self.logError(error)
                    }
                },
                receiveValue: { (image) in
                    self.images[url] = image
                    resultSubject.send(image)
                }
            )

        // Handle synchronous data task completion.
        if publishers[url] != nil {
            cancellables[url] = cancellable
        }

        return resultPublisher
    }
}
