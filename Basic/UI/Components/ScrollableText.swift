//
//  Created by Charlie Osmer on 8/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ScrollableText: UIViewRepresentable {
    private enum Content {
        case text(String, UIFont)
        case attributedText(NSAttributedString)
    }

    private var content: Content

    init(text: String, font: UIFont = .preferredFont(forTextStyle: .body)) {
        content = .text(text, font)
    }

    init(text: NSAttributedString) {
        content = .attributedText(text)
    }

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isEditable = false
        view.contentInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        switch content {
        case let .text(text, font):
            uiView.text = text
            uiView.font = font
        case let .attributedText(text):
            uiView.attributedText = text
        }
    }
}
