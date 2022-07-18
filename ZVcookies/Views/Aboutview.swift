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
                        NavigationLink(destination: {Text("We ship to australia and New zealand, refer to individual products for shipping rates")}, label: {Text("Shipping information")})
                        NavigationLink(destination: {Text("We are a cookie company created from a family kitchen in richmond, we love the smell of freshly baked cookies and want to spread that feeling to all over australia")}, label: {Text("About us")})
                        NavigationLink(destination: {Text("They're probably good for you")}, label: {Text("Diet and Nutrition information")})
                        NavigationLink(destination: {Text("Dm us on insta or refer to the contact page to get in touch")}, label: {Text("Contact us")})
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
