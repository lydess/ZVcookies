//
//  ProductPageView.swift
//  ZVcookies
//
//  Created by william Vise on 1/2/2022.
//

import SwiftUI
import Buy

struct ProductPageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var showpopover = false
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
                    HStack {
                        Button("<"){presentationMode.wrappedValue.dismiss()}.padding(.top, 40.0).padding(.leading,20)
                        Spacer()
                    }
                }.frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height, alignment: .top).background(uicol.forg.opacity(0.7))
            }
            
            VStack {
                
                AsyncImage(url: product.imageurl) { image in
                       image
                           .resizable()
                           .scaledToFill()
                   } placeholder: {
                       ProgressView()
                   }
                   .frame(width: UIScreen.main.bounds.width - 100, height: 400, alignment: .top)
                   .background(Color.gray)
                   .clipShape(Rectangle())
                
                
        
                
                Text(product.title + "\n \n").popover(isPresented: $showpopover, content: {Text("ohai")})
                Button("Customizations"){showpopover.toggle()}
                
                Text("Ingredients")
                Button(action: {},
                       label: {
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 125, height: 50, alignment: .top)
                            .cornerRadius(20).foregroundColor(.gray)
                        Text("Add to cart").foregroundColor(.blue).multilineTextAlignment(.center).offset(x: 0, y: 0).frame(width: 75, height: 50, alignment: .center)
                    }
                    
                })
                
                
            }.navigationBarBackButtonHidden(true)
            
            
        }
        
    }
}

struct ProductPageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPageView(title: "example title", price: Decimal(1), product: storeproduct(title: "memes", pid: GraphQL.ID(rawValue: "2134234"), price: Decimal(10), imageurl: URL(string: "https://www.instagram.com/p/CZG_P4iJ4Np/")!, cellid: 1))
    }
}
