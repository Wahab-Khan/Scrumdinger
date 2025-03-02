//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 01/03/2025.
//

import SwiftUI

struct DetailEditView: View {
    
    @Binding var scrum: DailyScrum
    @State private var newAttendee: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section(header: Text("Meeting Information")) {
                    TextField("Title", text: $scrum.title)
                    
                    HStack {
                        Slider(value: $scrum.lenthInDouble,
                               in: 5...30, step: 1)
                        Text("\(scrum.lengthInMinutes) minutes")
                    }
                    
                    ThemePicker(selectedTheme: $scrum.theme)
                }
                
                Section(header: Text("Attendees")) {
                    ForEach(scrum.attendees) { attendee in
                        Label("\(attendee.name)", systemImage: "person")
                    }
                    .onDelete { indices in
                        scrum.attendees.remove(atOffsets: indices)
                    }
                    HStack {
                        TextField("New Attendee", text: $newAttendee)
                        Button(action: {
                            if (newAttendee.isEmpty) { return }
                            withAnimation {
                                scrum.attendees.append(Attendee(name: newAttendee))
                                newAttendee.removeAll()
                            }
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                        })
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    DetailEditView(scrum: .constant(DailyScrum.emptyScrum))
}
