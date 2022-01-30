//
//  HomeButtonView.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct HomeButtonView: View {
    @StateObject var working = VM
    
    var titletext:String
    var pageid:Int
    
    var body: some View {
        HStack{
            Button(titletext){
                working.pickedscreen = pageid
                
            }.foregroundColor(.white).padding(6.0).font(.system(size: 30))
            
        }.background(.red).cornerRadius(30)
    }
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(titletext: "example text", pageid: 0)
    }
}
