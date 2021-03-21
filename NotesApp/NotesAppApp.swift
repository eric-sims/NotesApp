//
//  NotesAppApp.swift
//  NotesApp
//
//  Created by Eric Sims on 3/7/21.
//

import SwiftUI

@main
struct NotesAppApp: App {
    @StateObject var notes = AllNotes()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(notes)
        }
    }
}
