//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 01/03/2025.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selectedTheme: Theme
    
    var body: some View {
        
        Picker("Theme", selection: $selectedTheme) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
        
    }
}

#Preview {
    ThemePicker(selectedTheme: .constant(.bubblegum))
}
