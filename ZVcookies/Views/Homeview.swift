//
//  Homeview.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct Homeview: View {
    @StateObject var working = VM
    
    var body: some View {
       Text("hello swift")
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
