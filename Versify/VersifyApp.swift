//
//  VersifyApp.swift
//  Versify
//
//  Created by Kai Linsley on 2/3/23.
//

import SwiftUI

@main
struct VersifyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
