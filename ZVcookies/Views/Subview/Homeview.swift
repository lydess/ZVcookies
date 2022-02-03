//
//  Homeview.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct Homeview: View {
    @StateObject var working = VM
    
    @FetchRequest(
        entity: Product.entity(),
        sortDescriptors: [NSSortDescriptor(key: "idnum", ascending: true)]
    )
    
    var cookies: FetchedResults<Product>
    var cookieurl = URL(string: "https://www.cookingclassy.com/wp-content/uploads/2014/06/chocolate-chip-cookie-16-600x868.jpg")
    var screenwidth = UIScreen.main.bounds.width
    var screenheight = UIScreen.main.bounds.height
    var body: some View {
        
        VStack {
            HStack {
                Text("Zoes Cookies")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 30.0)
                
                Spacer()
                Button("-"){
                    DB.deletelast()
                }.padding(.leading, 30.0)
                Button("+"){
                    DB.bakecookie()
                    
                }
                .padding(.trailing, 30.0)
            }
            ScrollView{
            HStack {
                Text("Recently viewed")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 20.0)
                    .padding(.top, 25)
                
                Spacer()
                
                
            }
           
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5.0) {
                    ForEach(cookies, id: \.idnum ) { item in
                        Button(action: {}, label: {
                            HStack {
                                Text("").frame(width: 100, height: 100, alignment: .top)
                                    .background(.mint)
                                
                                
                            }
                                
                        })
                            
                    }
                    
                }
                
            }
            .padding()
                HStack {
                    Text("Your Orders")
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20.0)
                        .padding(.top, 25)
                    
                    Spacer()
                }
               
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(hard.throwawayarray(), id: \.uid ) { item in
                            Button(action: {}, label: {
                                Text("").frame(width: 100, height: 100, alignment: .top)
                                    .background(.mint)
                                    .cornerRadius(10)
                                    
                            })
                                
                        }
                    }
                    
                }.padding()
                
                HStack {
                    Text("New Arrivals")
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20.0)
                        .padding(.top, 25)
                    
                    Spacer()
                }
               
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(hard.throwawayarray(), id: \.uid ) { item in
                            Button(action: {}, label: {
                                Text("").frame(width: 100, height: 100, alignment: .top)
                                    .background(.mint)
                                    .cornerRadius(10)
                                    
                            })
                                
                        }
                    }
                    
                }.padding()
            
            }
            Spacer()
        }
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
//asdfasd
