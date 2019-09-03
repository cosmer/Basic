//
//  Created by Charlie Osmer on 8/31/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct Icon: View {
    let uiImage: UIImage?
    let size: CGFloat

    var body: some View {
        ZStack {
            shape
                .fill(Color(.secondarySystemBackground))
                .frame(width: size, height: size)

            uiImage.map {
                Image(uiImage: $0)
                    .resizable()
                    .frame(width: imageSize, height: imageSize)
                    .clipShape(shape)
                    .transition(AnyTransition.opacity.animation(.default))
            }
        }
    }

    private var shape: RoundedRectangle {
        RoundedRectangle(cornerRadius: 4, style: .continuous)
    }

    private var borderWidth: CGFloat { 2 }
    private var imageSize: CGFloat { size - 2*borderWidth }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon(uiImage: UIImage(named: "icons/day/bkn"), size: 67)
    }
}
