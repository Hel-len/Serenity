//
//  SerenityApp.swift
//  Serenity
//
//  Created by Елена Дранкина on 14.09.2021.
//

import SwiftUI

@main
struct SerenityApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainMenuView()
 //               .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
