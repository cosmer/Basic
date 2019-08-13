//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import ImageLoading

struct ForecastPeriodCell: View {
    let model: ForecastPeriodCellModel

    @ObservedObject var icon: LoadableImage

    init(model: ForecastPeriodCellModel) {
        self.model = model
        icon = LoadableImage(asset: model.icon)
    }

    var body: some View {
        HStack(alignment: .top) {
            Image(uiImage: icon.image ?? UIImage())
                .resizable()
                .modifier(IconModifier(size: 67))

            VStack(alignment: .leading) {
                Text(model.name)
                    .font(.headline)

                Text(model.detailedForecast)
                    .font(.body)
            }
        }
        .padding(.vertical)
        .onAppear(perform: icon.load)
    }
}

private struct IconModifier: ViewModifier {
    let size: CGFloat

    private var shape: RoundedRectangle {
        RoundedRectangle(cornerRadius: 6, style: .continuous)
    }

    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .clipShape(shape)
            .padding(2)
            .background(
                shape
                    .fill(Color(.secondarySystemBackground))
            )
    }
}

#if DEBUG
struct ForecastPeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ForecastPeriodCell(model: model)
        }
    }

    static let model = ForecastPeriodCellModel(
        id: 1,
        name: "Sunday",
        icon: .name("icons/day/bkn"),
        detailedForecast: "Partly sunny, with a high near 84. Southeast wind 0 to 5 mph."
    )
}
#endif

