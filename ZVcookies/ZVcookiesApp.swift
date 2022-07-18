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
    var debugmethods = DebugMethods()
    var body: some Scene {
        let persistenceController = PersistenceController.shared
        WindowGroup {
            MasterView().environment(\.managedObjectContext, persistenceController.container.viewContext).task {
            #if DEBUG
                print("Running In Debug, Executing assigned debug methods")
                print(Bundle.main.resourceURL)
                debugmethods.addSampleProducts()
                
                
            #endif
            }
            
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    
}
}
