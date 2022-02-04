//
//  ZVcookiesApp.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

@main
struct ZVcookiesApp: App {
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        let persistenceController = PersistenceController.shared
        WindowGroup {
            LoadupView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    
}
}
