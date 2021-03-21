//
//  NoteRow.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import SwiftUI

struct NoteRow: View {
    var note: Note
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(note.title)
                    .font(.headline)
                Text("Date Created: \(note.getDateCreated())")
                    .font(.footnote)
            }        }
    }
}


struct NoteRow_Previews: PreviewProvider {
    static var previews: some View {
        NoteRow(note: Note.Example)
    }
}

