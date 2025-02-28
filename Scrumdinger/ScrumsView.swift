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
        NavigationStack{
            
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .toolbar(content: {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }

            })
            .navigationTitle("Daily Scrums")
        }
    }
}

#Preview {
    ScrumsView(scrums : DailyScrum.sampleData)
}
