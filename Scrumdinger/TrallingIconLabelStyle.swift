//
//  TrallingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import SwiftUI


struct TrailingIconLabelStyle: LabelStyle {

    func makeBody(configuration: Self.Configuration) -> some View{
        HStack {
            configuration.title
            configuration.icon
        }
    }

}



extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon : TrailingIconLabelStyle { .init() }
//    static var tralingIcon : Self { Self() }
}
