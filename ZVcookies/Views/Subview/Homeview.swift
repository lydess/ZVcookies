//
//  Homeview.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import SwiftUI

struct Homeview: View {
    @StateObject var working = VM
    var screenwidth = UIScreen.main.bounds.width
    var screenheight = UIScreen.main.bounds.height
    var body: some View {
        
        VStack {
            HStack {
                Text("Zoes Cookies")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 20.0)
                
                Spacer()
            }
                
            
            HStack{
                Text("check out our amazing cookies")
                   
                Button("Lets go > "){
                    working.pickedscreen = 1
                }
            }.padding(.top, 25)
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
                HStack {
                    ForEach(hard.throwawayarray(), id: \.uid ) { item in
                        Rectangle().frame(width: 150, height: 300, alignment: .top)
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
                            Rectangle().frame(width: 150, height: 150, alignment: .top)
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
