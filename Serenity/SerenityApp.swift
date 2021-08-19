//
//  SerenityApp.swift
//  Serenity
//
//  Created by Елена Дранкина on 19.08.2021.
//

import SwiftUI

@main
struct SerenityApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
