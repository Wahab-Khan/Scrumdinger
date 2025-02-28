//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import SwiftUI

struct MettingView: View {
    var body: some View {
        VStack(){
            ProgressView(value: 5, total: 15)
            HStack{
                VStack(alignment: .leading){
                    Text("Second Elapsed")
                        .font(.caption)
                    
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing){
                    Text("Second Remaning")
                        .font(.caption)
                    
                   Label( "600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue(Text("600"))
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack{
                Text("Speaker 1 of 3")
                    .font(.caption)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "forward.fill")
                }
            }
            .accessibilityLabel("Next speaker")
            
            
            
        }
        .padding()
    }
}

#Preview {
    MettingView()
}
