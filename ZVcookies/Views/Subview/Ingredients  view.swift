//
//  Ingredients  view.swift
//  ZVcookies
//
//  Created by william Vise on 5/2/2022.
//

import SwiftUI

struct Ingredients__view: View {
    var body: some View {
        ZStack {
            Text("")
                .frame(width: UIScreen.main.bounds.width - 200, height: UIScreen.main.bounds.height, alignment: .top)
            VStack {
                Text("Only organic ingrediants")
            }
        }
    }
}

struct Ingredients__view_Previews: PreviewProvider {
    static var previews: some View {
        Ingredients__view()
    }
}
