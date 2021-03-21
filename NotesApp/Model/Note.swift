//
//  Note.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import Foundation

struct Note: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var pinned: Bool = false
    var dateCreated: Date
    
//    init(title: String, text: String, dateCreated: Date) {
//        self.title = title
//        self.text = text
//        self.dateCreated = dateCreated
//    }
    
    init(title: String) {
        self.title = title
        text = ""
        dateCreated = Date()
    }
    init(title: String, pinned: Bool) {
        self.title = title
        self.pinned = pinned
        text = ""
        dateCreated = Date()
    }
    
    func getDateCreated() -> String {
        let dateFormatter = DateFormatter()
         
        // US English Locale (en_US)
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMMd") // set template after setting locale
        return dateFormatter.string(from: dateCreated)
    }
    
    static let Example = Note(title: "Note title")
}


