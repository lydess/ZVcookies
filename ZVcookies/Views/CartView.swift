//
//  CartView.swift
//  ZVcookies
//
//  Created by william Vise on 5/2/2022.
//

import SwiftUI

struct CartView: View {
    @FetchRequest(
        entity: Product.entity(),
        sortDescriptors: [NSSortDescriptor(key: "idnum", ascending: true)]
    )
    var cookies: FetchedResults<Product>
    var cartlist = workingdata.activeproducts
    var body: some View {
        ZStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 5.0) {
                            ForEach(cookies, id: \.idnum ) { item in
                                Button(action: {}, label: {
                                    VStack {
                                        Text("").frame(width: 100, height: 100, alignment: .top)
                                            .background(.mint)
                                        
                                        
                                    }
                                        
                                })
                                    
                            }
                            
                        }
                        
                }
                Text("").frame(width: 1, height: 1, alignment: .bottom).padding(.top, 1)
            }
           
        }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
