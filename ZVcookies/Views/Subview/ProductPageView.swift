//
//  ProductPageView.swift
//  ZVcookies
//
//  Created by william Vise on 1/2/2022.
//

import SwiftUI

struct ProductPageView: View {
    @State var showpopover = false
    var title:String
    var price:String
    var imgurl = URL(string: "https://www.instagram.com/p/CZG_P4iJ4Np/")
    var body: some View {
        ZStack {
            VStack {
                Text("").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top).background(.white)
                
            }
            VStack {
                Text("").frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height, alignment: .top).background(uicol.forg)
            }
            VStack {
                Image(uiImage: UIImage(named: "cookie1")!).resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).foregroundColor(Color.orange).padding().frame(width: UIScreen.main.bounds.width - 100, height: 300, alignment: .top)
                
                Text("curved vanilla biscut \n \n").popover(isPresented: $showpopover, content: {Text("ohai")})
                Button("Customizations"){showpopover.toggle()}
                Text("Ingredients")
                
                
            }
        }
        
    }
}

struct ProductPageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPageView(title: "example title", price: "30")
    }
}
