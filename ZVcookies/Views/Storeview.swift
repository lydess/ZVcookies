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
                    Text("Pattern Cookies")
                    Spacer()
                }.padding(.leading, 20)
                ForEach(cookielist, id: \.uid) {cookie in
                    NavigationLink(tag: cookie.pageid, selection: $selectedcookie, destination: {Text("memes")}, label: {Catalogview(titletext: cookie.title, pricetext: "$" + "\(cookie.price)").cornerRadius(20)})
                    
                }
                HStack {
                    Text("Custom cookies")
                    Button("sheet test"){
                        showcustom.toggle()
                    }.sheet(isPresented: $showcustom){
                        Detail_sheet()
                    }
                    Spacer()
                }.padding(.leading,20)
                    .padding(.top,50)
                
                ForEach(cookielist, id: \.uid) {cookie in
                    NavigationLink(tag: cookie.pageid, selection: $selectedcookie, destination: {Text("memes")}, label: {Catalogview(titletext: cookie.title, pricetext: "$" + "\(cookie.price)").cornerRadius(20)})
                    
                }
            }.background( )
            }.buttonStyle(.plain)
            
            
            
//            Spacer()
            
//            HStack{
//                Button("selected state"){
//                    print(selectedcookie)
//                }
//           }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Storeview()
    }
}
