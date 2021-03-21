//
//  NoteComposerView.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import SwiftUI

struct NoteComposerView: View {
    @State var note: Note
    @State var text: String = ""
    
    var body: some View {
        VStack {
            //Text(note.title).font(.title)
            TextEditor(text: $text)
                .border(Color.black)
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
