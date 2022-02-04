//
//  HomeView.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct Storeview: View {
    @State private var showcustom = false
    @StateObject var working = VM
    var cookielist = hard.getcatalog()
    @State var selectedcookie:Int?
    
    var body: some View {
    
        VStack {
            NavigationView{
            ScrollView {
                HStack {
                    Text("Our Cookies")
                }.padding(.leading, 20)
                ForEach(workingdata.activeproducts, id: \.pid) {cookie in
                    NavigationLink(tag: cookie.cellid, selection: $selectedcookie, destination: {ProductPageView(title: cookie.title, price: cookie.price, product: cookie)}, label: {Catalogview(titletext: cookie.title, pricetext: cookie.price, asyncurl: cookie.imageurl).cornerRadius(20)}).navigationBarHidden(true).navigationBarBackButtonHidden(true).statusBar(hidden: true)
                  
                }
             
            }
            }.buttonStyle(.plain).navigationBarHidden(true).navigationBarBackButtonHidden(true)
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Storeview()
    }
}
