//
//  ContentView.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var notes: AllNotes
    @State private var showingNoteSheet = false
    
    var body: some View {
        NavigationView {
            List {
               Section(header: Text("Pinned")) {
                    ForEach(self.notes.notes) { note in
                        if (note.pinned) {
                            NavigationLink(destination: NoteComposerView(note: note)) {
                                NoteRow(note: note)
                            }
                        }
                    }
                    .onDelete(perform: notes.delete)
                }

                Section (header: Text("Notes")) {
                    ForEach(self.notes.notes) { note in
                        if !(note.pinned) {
                            NavigationLink(destination: NoteComposerView(note: note)) {
                                NoteRow(note: note)
                            }
                        }
                    }
                    .onDelete(perform: notes.delete)
                }
            }  //list
            .listStyle(InsetListStyle())
            .navigationBarTitle("Notes", displayMode: .automatic)
            .toolbar {
                HStack {
                    EditButton()
                }
            }
        } //navview
        .environmentObject(notes)
    }

} // ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AllNotes())
    }
}

