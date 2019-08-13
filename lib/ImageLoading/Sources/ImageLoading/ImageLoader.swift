//
//  Created by Charlie Osmer on 8/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import UIKit
import Combine

final class ImageLoader {
    static let shared = ImageLoader()

    typealias ImagePublisher = AnyPublisher<UIImage, Error>

    enum ImageToken {
        case image(UIImage)
        case publisher(ImagePublisher)
    }

    private var images: [URL: UIImage] = [:]
    private var publishers: [URL: ImagePublisher] = [:]
    private var cancellables: [URL: AnyCancellable] = [:]

    func image(at url: URL) -> ImageToken {
        if let image = images[url] {
            return .image(image)
        }

        if let publisher = publishers[url] {
            return .publisher(publisher)
        }

        let resultSubject = PassthroughSubject<UIImage, Error>()
        let resultPublisher = resultSubject.eraseToAnyPublisher()

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
                    resultSubject.send(completion: completion)
                },
                receiveValue: { (image) in
                    self.images[url] = image
                    resultSubject.send(image)
                }
            )

        // Handle synchronous data task completion.
        do {
            if let image = images[url] {
                return .image(image)
            }

            if publishers[url] == nil {
                return .publisher(resultPublisher)
            }
        }

        cancellables[url] = cancellable
        return .publisher(resultPublisher)
    }
}
