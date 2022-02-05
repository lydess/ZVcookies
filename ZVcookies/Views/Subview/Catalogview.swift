//
//  Catalogview.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct Catalogview: View {
    var cookielist = hard.getcatalog()
    var titletext:String
    var pricetext:Decimal
    var asyncurl:URL
    
   
    
    var body: some View {
        //TODO make the button tapple in the middle whitespace
        VStack{
            HStack{
                VStack {
                    HStack {
                        Text(titletext)
                        Spacer()
                    }.padding([.top, .bottom, .trailing])
                    HStack {
                        Text("\(pricetext.description)")
                        Spacer()
                    }
                    .padding(.bottom)
                        
                        
                }.multilineTextAlignment(.leading)
                Spacer()
                
                AsyncImage(url: asyncurl) { image in
                       image
                           .resizable()
                           .scaledToFill()
                   } placeholder: {
                       ZStack {
                           Image("cookiedef")
                           ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/).progressViewStyle(.circular)
                       }
                       
                   }
                   .frame(width: 66, height: 66)
                   .background(Color.gray)
                   .clipShape(Circle())
                    
                }
                    
            }.frame(width: 300, height: 40, alignment: .leading).padding(20).contentShape(Rectangle()).cornerRadius(40).background(uicol.forg)
            
        
        
        
        
        
        
        
        }
        
    }


struct Catalogview_Previews: PreviewProvider {
    static var previews: some View {
        Catalogview(titletext: "testtext", pricetext: Decimal(1), asyncurl: workingdata.activeproducts[0].imageurl)
    }
}
