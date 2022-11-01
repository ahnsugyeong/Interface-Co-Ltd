//
//  Interface_Co_LtdApp.swift
//  Interface-Co-Ltd
//
//  Created by 안수경 on 2022/11/02.
//

import SwiftUI

@main
struct Interface_Co_LtdApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
