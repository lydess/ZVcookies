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

struct MasterView: View {
    @StateObject var working = VM
    @State var test = 0
    init() {
        // UITabBar.appearance().isTranslucent = false
        // UITabBar.appearance().backgroundColor = .secondaryLabel
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "foreg")
    }
    var buttlist = hard.gethomelayout()
    var uicol = Palate()
    var body: some View {
        
        TabView(selection: $working.pickedscreen) {
            
            Homeview().tabItem{ Image(systemName: "house").resizable().renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/) }.tag(3)
            Storeview().tabItem{ Image(systemName: "bag.circle").resizable() }.tag(1)
            Text("to be completed").tabItem{ Image(systemName: "cart").resizable() }.tag(2)
            AboutView().tabItem{ Image(systemName: "questionmark.circle.fill").symbolRenderingMode(.palette).foregroundColor(.red) }.tag(0)
            
            
        }
        
        
            
    }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
