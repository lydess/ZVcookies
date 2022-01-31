//
//  Aboutview.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import Foundation
import SwiftUI

struct AboutView: View {
    var uicol = Palate()
  
   
    var body: some View {
        VStack{
            NavigationView{
                List{
                    Section {
                        NavigationLink(destination: {Text("r")}, label: {Text("Shipping information")})
                        NavigationLink(destination: {Text("r")}, label: {Text("About us")})
                        NavigationLink(destination: {Text("r")}, label: {Text("Diet and Nutrition information")})
                        NavigationLink(destination: {Text("r")}, label: {Text("Contact us")})
                }
                        NavigationLink(destination: {DebugView()}, label: {Text("Debug")})
                
            }
            }
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
