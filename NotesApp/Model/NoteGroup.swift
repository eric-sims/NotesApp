//
//  NoteGroup.swift
//  NotesApp
//
//  Created by Eric Sims on 3/8/21.
//

import Foundation

class AllNotes: ObservableObject {
    @Published var notes = [Note]()

    convenience init() {
        self.init(notes: [
            Note(title: "Grocery List", pinned: true),
            Note(title: "Life Goals", pinned: true),
            Note(title: "Sunday Notes", pinned: false)
        ])
    }
    
    init(titles: [String], pinned: [Bool]) {
        for i in 0..<titles.capacity {
            notes.append(Note(title: titles[i], pinned: pinned[i]))
        }
    }
    
    init(notes: [Note]) {
        for note in notes {
            self.append(note)
        }
    }

    func append(_ note: Note) {
        notes.append(note)
    }
    
    func delete(_ indexSet: IndexSet) {
        notes.remove(atOffsets: indexSet)
    }
    
    func createNewNote() {
        append(Note(title: "New Note"))
    }

}
