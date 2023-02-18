//
//  CoreDataBootcampApp.swift
//  CoreDataBootcamp
//
//  Created by Mon P. on 18/02/2023.
//

import SwiftUI

@main
struct CoreDataBootcampApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
