//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var scrum : DailyScrum
    
    @State private var editScrum : DailyScrum = DailyScrum.emptyScrum
    @State private var isPresentingEditView = false
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text( "Meeting Info")){
                    
                    NavigationLink(destination: MeetingView(), label: {
                        Label("Start Meeting", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    })
                    
                    HStack {
                        Label("Lenth", systemImage: "clock")
                        Spacer()
                        Text("\(scrum.lengthInMinutes)")
                    }
                    
                    HStack {
                        Label("Theme", systemImage: "paintpalette")
                        Spacer()
                        Text("\(scrum.theme)")
                            .padding(4)
                            .foregroundColor(scrum.theme.accentColor)
                            .background(scrum.theme.mainColor)
                            .cornerRadius(4)
                    }
                    
                }
                
                Section(header: Text("Attendes")) {
                    ForEach(scrum.attendees) { attendee in
                        Label("\(attendee.name)", systemImage: "person")
                    }
                }
            }
            .navigationTitle("Design")
            .toolbar{
                Button("Edit"){
                    isPresentingEditView = true
                    editScrum = scrum
                }
            }
            .sheet(isPresented: $isPresentingEditView) {
                NavigationStack {
                    DetailEditView(scrum: $editScrum)
                        .navigationTitle(scrum.title)
                        .toolbar {
                            ToolbarItem(placement: .cancellationAction) {
                                Button("Cancel") {
                                    isPresentingEditView = false
                                }
                            }
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Done") {
                                    isPresentingEditView = false
                                    scrum = editScrum
                                }
                            }
                        }
                }
            }
            
        }
        
    }
}

#Preview {
    DetailView(
        scrum: .constant(DailyScrum.sampleData.first!)
    )
}
