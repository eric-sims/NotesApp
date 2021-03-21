//
//  ContentView.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var noteGroup = NoteGroup(titles:
    [ "Grocery List", "Life Goals", "Sunday Thoughts", "App Ideas", "Recipes" ],
    pinned: [true, false, true,false, false])
    
    var body: some View {
        NavigationView {
            List {
               Section(header: Text("Pinned")) {
                    ForEach(noteGroup.notes) { note in
                        if (note.pinned) {
                            NavigationLink(destination: NoteComposerView(note: note)) {
                                NoteRow(note: note)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                }

                Section (header: Text("Notes")) {
                    ForEach(noteGroup.notes) { note in
                        if !(note.pinned) {
                            NavigationLink(destination: NoteComposerView(note: note)) {
                                NoteRow(note: note)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                }
            }
            .listStyle(InsetListStyle())
            .navigationBarTitle("Notes", displayMode: .large)
            .toolbar {
                HStack {
                    NavigationLink(destination: NoteComposerView(note: Note.Example)) {
                        Image(systemName: "plus")
                    }
                    EditButton()
                }
            }
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        noteGroup.notes.remove(atOffsets: indexSet)
    }
    
    func addItem(_ note: Note) {
        noteGroup.notes.append(note)
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

