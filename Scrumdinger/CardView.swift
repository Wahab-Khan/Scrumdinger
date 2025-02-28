//
//  CardView.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import SwiftUI

struct CardView: View {
    
    var scrum : DailyScrum
    
    var body: some View {
        
//        VStack(alignment: .leading) {
//                   Text(scrum.title)
//                       .font(.headline)
//                       .accessibilityAddTraits(.isHeader)
//                   Spacer()
//                   HStack {
//                       Label("\(scrum.attendees.count)", systemImage: "person.3")
//                           .accessibilityLabel("\(scrum.attendees.count) attendees")
//                       Spacer()
//                       Label("\(scrum.lengthInMinutes)", systemImage: "clock")
//                           .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
//                           .labelStyle(.trailingIcon)
//                   }
//                   .font(.caption)
//               }
//               .padding()
//               .foregroundColor(scrum.theme.accentColor)
        
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minutes long)")

            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

#Preview (traits: .fixedLayout(width: .infinity, height: 80)){
    let scrum = DailyScrum.sampleData.first
    CardView(scrum: scrum!)
        .frame(width: .infinity, height: 80)
        .background(Color.yellow)
}
