//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Abdul Wahab Khan on 28/02/2025.
//

import Foundation

struct DailyScrum: Identifiable {
    
    var id : UUID
    var title : String
    var attendees : [Attendee]
    var lengthInMinutes : Int
    var theme : Theme
    
    init(
        id: ID = UUID(),
        title: String,
        attendees: [String],
        lengthInMinutes: Int,
        theme: Theme
    ) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
    
    
    var lenthInDouble : Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
}

extension DailyScrum {
    static var emptyScrum = DailyScrum(
        title: "",
        attendees: [],
        lengthInMinutes: 5,
        theme: .sky
    )
}

struct Attendee: Identifiable {
    var id: UUID = UUID()
    var name: String
}



#if DEBUG
extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
#endif
