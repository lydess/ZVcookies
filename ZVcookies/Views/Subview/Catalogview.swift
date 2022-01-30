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
    var pricetext:String
   
    
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
                        Text(pricetext)
                        Spacer()
                    }
                    .padding(.bottom)
                        
                        
                }.multilineTextAlignment(.leading)
                Spacer()
                Image(uiImage: UIImage(named: "cookie")!).resizable().frame(width: 60, height: 40, alignment: .trailing)
            }.frame(width: 300, height: 40, alignment: .leading)
            
        
        
        
        
        
        
        
        }.padding(20).contentShape(Rectangle()).cornerRadius(40).background(uicol.forg)
        
    }
}

struct Catalogview_Previews: PreviewProvider {
    static var previews: some View {
        Catalogview(titletext: "testtext", pricetext: "50")
    }
}
