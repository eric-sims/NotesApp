//
//  NoteGroup.swift
//  NotesApp
//
//  Created by Eric Sims on 3/8/21.
//

import Foundation

class NoteGroup: ObservableObject {
    @Published var notes = [Note]()
    
    init() {
        notes = [Note]()
    }
    
    init(titles: [String], pinned: [Bool]) {
        for i in 0..<titles.capacity {
            notes.append(Note(title: titles[i], pinned: pinned[i]))
        }
    }
    
    func append(note: Note) {
        notes.append(note)
    }
    
}
