//
//  NoteComposerView.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import SwiftUI

struct NoteComposerView: View {
    var note: Note
    //@EnvironmentObject var allNotes: AllNotes // NEED TO WIRE TOGETHER
    @State var noteMessage: String = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $noteMessage)
                .cornerRadius(10)
                .shadow(color: .black, radius: 10, x: 5, y: 5)
                .padding()
        }
        .navigationTitle(note.title)
    }
}

struct NoteComposerView_Previews: PreviewProvider {
    static var previews: some View {
        NoteComposerView(note: Note.Example)
    }
}
