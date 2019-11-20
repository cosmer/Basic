//
//  Created by Charlie Osmer on 8/31/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import API

struct Icon: View {
    var uiImage: UIImage?
    var precipitationChance: IconPrecipitationChance?

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
                    .overlay(precipitationChanceOverlay, alignment: .bottom)
                    .clipShape(shape)
                    .transition(AnyTransition.opacity.animation(.default))
            }
        }
    }

    private var size: CGFloat { 98 }
    private var borderWidth: CGFloat { 2 }
    private var imageSize: CGFloat { size - 2*borderWidth }

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

    private var precipitationChanceOverlay: some View {
        OptionalView(precipitationChance,
            some: PrecipitationChanceOverlay.init,
            none: EmptyView.init
        )
    }
}

private struct PrecipitationChanceOverlay: View {
    struct Model {
        var leadingValue: Int?
        var trailingValue: Int?
        var showLeadingBackground: Bool
        var showTrailingBackground: Bool
        var showArrow: Bool
    }

    var model: Model

    init(chance: IconPrecipitationChance) {
        switch chance {
        case let .full(value):
            model = .init(
                leadingValue: nil,
                trailingValue: value,
                showLeadingBackground: true,
                showTrailingBackground: true,
                showArrow: false
            )
        case let .split(leading, trailing):
            model = .init(
                leadingValue: leading,
                trailingValue: trailing,
                showLeadingBackground: leading != nil,
                showTrailingBackground: trailing != nil,
                showArrow: false
            )
        case let .transition(leading, trailing):
            model = .init(
                leadingValue: leading,
                trailingValue: trailing,
                showLeadingBackground: true,
                showTrailingBackground: true,
                showArrow: true
            )
        }
    }

    private static let font: CTFont = {
        let font = UIFont.systemFont(ofSize: 16, weight: .bold) as CTFont
        return CTFontCreateCopyWithSymbolicTraits(font, 0, nil, [.traitCondensed], [.traitCondensed])!
    }()

    private static let smallFont: CTFont = {
        let font = UIFont.systemFont(ofSize: 14, weight: .bold) as CTFont
        return CTFontCreateCopyWithSymbolicTraits(font, 0, nil, [.traitCondensed], [.traitCondensed])!
    }()

    private var backgroundColor: Color { Color(white: 1).opacity(0.9) }

    var body: some View {
        ZStack {
            model.leadingValue.map { (value) in
                HStack(spacing: 0) {
                    Text("\(value)%")
                        .font(Font(value >= 100 ? Self.smallFont : Self.font))
                    Spacer(minLength: 0)
                }
            }

            if model.showArrow {
                HStack(spacing: 0) {
                    Spacer(minLength: 0)
                    Text("→")
                    Spacer(minLength: 0)
                }
            }

            model.trailingValue.map { (value) in
                HStack(spacing: 0) {
                    Spacer(minLength: 0)
                    Text("\(value)%")
                        .font(Font(value >= 100 ? Self.smallFont : Self.font))
                }
            }
        }
        .padding(.horizontal, 2)
        .lineLimit(1)
        .foregroundColor(Color(red: 0, green: 0.25, blue: 0.8))
        .font(Font(Self.font))
        .background(
            HStack(spacing: 0) {
                model.showLeadingBackground ? backgroundColor : .clear
                model.showTrailingBackground ? backgroundColor : .clear
            }
        )
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Group {
                Icon(uiImage: UIImage(named: "icons/day/bkn"))
                    .padding()
                    .background(Color(.systemBackground))
                    .environment(\.colorScheme, .light)

                Icon(uiImage: UIImage(named: "icons/day/bkn"))
                    .padding()
                    .background(Color(.systemBackground))
                    .environment(\.colorScheme, .dark)
            }

            Group {
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .transition(90, 100))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .split(100, 100))
            }
            .padding()
            .background(Color(.systemBackground))

            Group {
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .full(90))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .split(90, nil))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .split(nil, 90))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .split(90, 40))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .transition(90, nil))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .transition(nil, 90))
                Icon(uiImage: UIImage(named: "icons/day/bkn"), precipitationChance: .transition(90, 40))
            }
            .padding()
            .background(Color(.systemBackground))
        }
        .previewLayout(.sizeThatFits)
    }
}
