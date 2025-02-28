//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import SwiftUI

struct ScrumsView: View {
    
    var scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrums : DailyScrum.sampleData)
}
