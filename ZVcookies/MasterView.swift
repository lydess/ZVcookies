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
    var uicol = Palate()
    var body: some View {
        VStack {
            
            if working.pickedscreen != 0 {
                HStack {
                    Button("<"){working.pickedscreen = 0}
                    .padding(.leading, 30.0)
                    Spacer()
                }
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
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
        MasterView()
    }
}
