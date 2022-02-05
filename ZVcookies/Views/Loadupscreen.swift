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
    @State var loadingcomplete = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()


    
    var body: some View {
        VStack{
            
            if doshow == false{
                Image("cookielogo")
                Text("Zoes Cookies").onReceive(timer, perform: { input in
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
