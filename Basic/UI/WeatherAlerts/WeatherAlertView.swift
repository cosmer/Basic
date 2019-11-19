//
//  Created by Charlie Osmer on 9/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherAlertView: View {
    let model: WeatherAlertViewModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(model.headline + "\n")
                    .font(.headline)
                    .fixMultilineTextTruncation()

                Text(model.area)
                    .font(.subheadline)
                    .fixMultilineTextTruncation()

                Divider()

                Text(model.description)
                    .font(.body)
                    .fixMultilineTextTruncation()
            }
            .padding()
        }
        .navigationBarTitle("Alert", displayMode: .inline)
    }
}

struct WeatherAlertView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeatherAlertView(model: WeatherAlertViewModel.previews[1])
        }
    }
}
