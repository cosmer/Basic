//
//  Created by Charlie Osmer on 8/31/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct Icon: View {
    let uiImage: UIImage?
    let size: CGFloat

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        ZStack {
            shape
                .fill(fillColor)
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

    private var fillColor: Color {
        switch colorScheme {
        case .dark:
            return Color(white: 0.78)
        case .light:
            return Color(white: 0.25)
        @unknown default:
            return .white
        }
    }

    private var borderWidth: CGFloat { 2 }
    private var imageSize: CGFloat { size - 2*borderWidth }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Icon(uiImage: UIImage(named: "icons/day/bkn"), size: 67)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .light)

            Icon(uiImage: UIImage(named: "icons/day/bkn"), size: 67)
                .padding()
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
        }
        .previewLayout(.sizeThatFits)
    }
}
