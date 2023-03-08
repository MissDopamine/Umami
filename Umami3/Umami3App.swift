//
//  Umami3App.swift
//  Umami3
//
//  Created by Francesca De Santis on 24/02/23.
//

import SwiftUI

@main
struct Umami3App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
