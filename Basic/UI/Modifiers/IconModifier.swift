//
//  Created by Charlie Osmer on 8/20/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct IconModifier: ViewModifier {
    let size: CGFloat

    private var shape: RoundedRectangle {
        RoundedRectangle(cornerRadius: 6, style: .continuous)
    }

    private var background: some View {
        shape.fill(
            Color(.secondarySystemBackground)
        )
    }

    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .clipShape(shape)
            .padding(2)
            .background(background)
    }
}
