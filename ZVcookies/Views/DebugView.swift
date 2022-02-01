//
//  DebugView.swift
//  ZVcookies
//
//  Created by william Vise on 31/1/2022.
//

import SwiftUI
import Buy

struct DebugView: View {
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
                        print(shop.getProductsQuery())
                    }
                }
                Section{
                    Button("card example"){
                        print(shop.getProductsQuery())
                    }
                }
                
            }
            Rectangle().animation(.spring()).offset(y: viewstate.height)
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
