//
//  ContentView.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI
let assets = staticassets()
let VM = workingdata()
let hard = hardcoded()
let uicol = Palate()
let handler = PersistenceController.shared.container.viewContext
let DB = datahandler()
let shop = shopify()

struct MasterView: View {
    @Environment(\.scenePhase) var scenePhase
    @Environment(\.managedObjectContext) var managedObjectContext
    @StateObject var working = VM
    @State var test = 0
    @State var testval = 0
    init() {
        // UITabBar.appearance().isTranslucent = false
        // UITabBar.appearance().backgroundColor = .secondaryLabel
        UITabBar.appearance().unselectedItemTintColor = .white
        UITabBar.appearance().backgroundColor = UIColor(named: "foreg")
        
    }
    var buttlist = hard.gethomelayout()
    var uicol = Palate()
    var body: some View {
        
        TabView(selection: $working.pickedscreen) {
            
            Homeview().tabItem{ Image(systemName: "house")}.tag(3).animation(.easeOut, value: working.pickedscreen)
            Storeview().tabItem{ Image(systemName: "bag.circle").resizable() }.tag(1).animation(.easeOut, value: working.pickedscreen)
            Text("to be completed").tabItem{ Image(systemName: "cart").resizable() }.tag(2).animation(.easeOut, value: working.pickedscreen)
            AboutView().tabItem{ Image(systemName: "questionmark.circle.fill").symbolRenderingMode(.palette) }.tag(0).animation(.easeOut, value: working.pickedscreen)
            
            
        }
      
        
        
        
        
            
    }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
