//
//  ContentView.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI
let VM = workingdata()

struct ContentView: View {
    @StateObject var working = VM
    @State var tabsel = 0
    var uicol = Palate()
    var body: some View {
        VStack {
           
            TabView(selection: $working.pickedscreen) {
                Homeview().tag(0)
                AboutView().tag(1)
                Storeview().tag(2)
            }
            Button("cycle"){
                switch working.pickedscreen {
                case 0: working.pickedscreen = 1
                case 1: working.pickedscreen = 2
                case 2: working.pickedscreen = 0
                default: print("memes")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
