//
//  Loadupscreen.swift
//  ZVcookies
//
//  Created by william Vise on 3/2/2022.
//

import Foundation
import SwiftUI

struct LoadupView: View {
    @State var doshow = false
    @State var progshow = false
    @State var loadingcomplete = false
    let APItimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let progressviewtimer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    


    
    var body: some View {
        VStack{
            
            if doshow == false{
                Image("cookiedef").onReceive(progressviewtimer, perform: { input in
                    progshow.toggle()
                })
                VStack {
                    if progshow == true {
                        ProgressView().progressViewStyle(.circular)
                    } else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                }
                Text("Zoes Cookies").onReceive(APItimer, perform: { input in
                    if workingdata.activeproducts.count == 0 {
                        print("waiting for inital fetch")
                    }else{
                    doshow = true
                    }
                    
                })
                
               ProgressView().task {
            do {
                try await shop.GetShopifyProducts()
               
            }
            catch{print("it failed")}
        }
        
            } else {
                MasterView()
            }
            
        
       
        }
    }
}

struct Loadupscreen_preview: PreviewProvider {
    static var previews: some View {
        LoadupView()
    }
}
