//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
