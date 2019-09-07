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
                Text(model.headline)
                    .font(.headline)
                    .fixedSize(horizontal: false, vertical: true) // Hack!

                Text("\n")
                    .font(.headline)
                    .accessibility(hidden: true)

                Text(model.area)
                    .font(.subheadline)
                    .fixedSize(horizontal: false, vertical: true) // Hack!

                Divider()

                Text(model.description)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true) // Hack!
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
