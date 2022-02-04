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
    
    var body: some View {
        VStack{
            if doshow == false{
        Text("zoeh").task {
            do {
                await shop.GetShopifyProducts()
               
            }
            catch{print("it failed")}
            doshow.toggle()
        }
            } else {
                MasterView()
            }
            
        
       
        }
    }
}
