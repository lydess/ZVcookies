//
//  Homeview.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct Homeview: View {
    @StateObject var working = VM
    let buttonlist = hard.gethomelayout()
    let data  = (1...5).map { "item \($0)" }
    var newgrids = [
        GridItem(.flexible(minimum: 1, maximum: 200)),
        GridItem(.flexible(minimum: 1, maximum: 200))
    ]
    var body: some View {
        VStack {
            if working.pickedscreen == 1 {
                Text("its a me")
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            LazyVGrid(columns: newgrids) {
                ForEach(buttonlist, id: \.pageid) {button in
                    Text("top of the line down to bot divtom of the line").background(.red).padding()
                }
            }
        }
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
