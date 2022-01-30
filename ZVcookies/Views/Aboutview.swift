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
    var aboutcontent = staticassets()
   
    var body: some View {
        VStack{
            ScrollView {
                Button("tap me"){
                    print()
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
