//
//  Created by Charlie Osmer on 8/11/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import UIKit
import Combine

public final class LoadableImage: ObservableObject {
    @Published var _image: UIImage? = nil

    private let url: URL?
    private var cancellable: AnyCancellable?

    public convenience init(url: URL) {
        self.init(asset: .url(url))
    }

    public init(asset: LoadableImageAsset) {
        switch asset {
        case .url(let url):
            self.url = url
            _image = ImageLoader.shared.cachedImage(at: url)
        case .image(let image):
            self._image = image
            url = nil
        case .name(let name):
            self._image = UIImage(named: name)
            url = nil
        }
    }

    public var image: UIImage? {
        if let image = _image {
            return image
        }

        load()
        return nil
    }

    private func load() {
        dispatchPrecondition(condition: .onQueue(.main))

        if _image != nil || cancellable != nil {
            return
        }

        guard let url = url else {
            return
        }

        cancellable = ImageLoader.shared.image(at: url)
            .receive(on: RunLoop.main)
            .sink(
                receiveCompletion: { [unowned self] _ in
                    self.cancellable = nil
                },
                receiveValue: { [unowned self] in
                    self._image = $0
                }
            )
    }
}
