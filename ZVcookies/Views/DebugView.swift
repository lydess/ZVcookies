//
//  DebugView.swift
//  ZVcookies
//
//  Created by william Vise on 31/1/2022.
//

import SwiftUI
import Buy

struct DebugView: View {
    @State var doshow = false
    @State var title = "product name"
    @State var viewstate = CGSize.zero
    var body: some View {
        
        VStack {
            List {
                Section{Button("DB test"){
                    DB.getPL()
                }
                Button("DB add"){
                    DB.bakecookie()
                }
                Button("DB delete"){
                    DB.bincookies()
                }}
                Section{
                    Button("Shop"){
                        doshow.toggle()
                    }
                    Button("example"){
                        shop.example()
                    }
                    Button("get all products"){
                       
                    }.task {
                        await print(shop.getProductslist())
                    }
                }
                Section{
                    Button("card example"){
                        ProductPageView(title: "me", price: "you")
                    }
                }
                
            }
            if doshow == true {
                ProgressView().task {
                    do{  await shop.getProductsQuery()}
                    catch{print("it died")}
                }
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            Text(title)
            Rectangle()
                .frame(width: 20.0, height: 20.0)
                .animation(.spring()).offset(y: viewstate.height)
                .gesture(DragGesture()
                            .onChanged{value in
                                self.viewstate = value.translation
                    
                }
                            .onEnded{ value in
                                self.viewstate = value.translation
                    
                }
            )
        }
       
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}