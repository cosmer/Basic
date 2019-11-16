//
//  CardStyle.swift
//  Basic
//
//  Created by Charles Osmer on 11/13/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

extension View {
    func card(fill: Color) -> some View {
        self
            .padding()
            .background(Self.cardBackground(fill: fill))
    }

    private static func cardBackground(fill: Color) -> some View {
         RoundedRectangle(cornerRadius: 6, style: .continuous)
             .fill(fill)
     }
}
