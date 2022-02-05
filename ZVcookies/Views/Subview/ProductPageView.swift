//
//  ProductPageView.swift
//  ZVcookies
//
//  Created by william Vise on 1/2/2022.
//

import SwiftUI
import Buy
import CachedAsyncImage

struct ProductPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var showpopover = false
    @State var ingrediantpopover = false
    @State var alertvar = false
    var title:String
    var price:Decimal
    var product:storeproduct

    var imgurl = URL(string: "https://www.instagram.com/p/CZG_P4iJ4Np/")
    var body: some View {
       
        ZStack {
            VStack {
                Text("").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top).background(.white)
            }
            VStack {
                
                VStack{
                }.frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height, alignment: .top).background(uicol.forg.opacity(0.7))
            }
            
            VStack {
                    ScrollView{
                        CachedAsyncImage(url: product.imageurl) { image in
                           image
                               .resizable()
                               .scaledToFill()
                       } placeholder: {
                           Image("cookiedef")
                       }
                       .frame(width: UIScreen.main.bounds.width - 100, height: 400, alignment: .top)
                       .background(Color.gray)
                       .clipShape(Rectangle())
                        
                    Text(product.title + "\n \n").popover(isPresented: $showpopover, content: {
                        AddToCartpopover(product: product)
                    })
                        Button("ingredients"){
                            ingrediantpopover.toggle()
                        }.popover(isPresented: $ingrediantpopover, content: {
                            Ingredients__view()
                        }).padding()
                    Button(action: {},
                           label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 125, height: 60, alignment: .top)
                                .cornerRadius(10).foregroundColor(uicol.forg)
                            Button("Add to cart"){DB.AddSquare(product: product)
                                alertvar.toggle()
                            }.alert("Carts are hard, give me a break", isPresented: $alertvar, actions: {Text("me")})
                            .foregroundColor(.mint).multilineTextAlignment(.center).offset(x: 0, y: 0)
                            .frame(width: 75, height: 50, alignment: .center)
                        }
                    })
                        Text("").frame(width: 500, height: 20, alignment: .top)
                    }.padding(.bottom, 1).padding(.top, 1)
            }.navigationBarBackButtonHidden(true)
        }.gesture(DragGesture(minimumDistance: 100, coordinateSpace: .global).onEnded({ val in
            
            if val.translation.width > 0 {
            presentationMode.wrappedValue.dismiss()
            }
            
        }))
        
           
        
    }
}

struct ProductPageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPageView(title: "example title", price: Decimal(1), product: storeproduct(title: "memes", pid: GraphQL.ID(rawValue: "2134234"), price: Decimal(10), imageurl: URL(string: "https://www.instagram.com/p/CZG_P4iJ4Np/")!, cellid: 1))
    }
}
