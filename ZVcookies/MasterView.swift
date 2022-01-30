//
//  ContentView.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

let VM = workingdata()
let hard = hardcoded()
let uicol = Palate()

struct MasterView: View {
    @StateObject var working = VM
    @State var test = 0
    var buttlist = hard.gethomelayout()
    var uicol = Palate()
    var body: some View {
        
        TabView(selection: $working.pickedscreen) {
            
            Storeview().tabItem{ Image(systemName: "bag.circle").resizable() }.tag(1)
            AboutView().tabItem{ Image(systemName: "questionmark.circle.fill").resizable() }.tag(0)
            Text("to be completed").tabItem{ Image(systemName: "cart.fill").resizable() }.tag(2)
            
            
        }
        
            
    }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
