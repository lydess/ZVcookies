//
//  Detail sheet.swift
//  ZVcookies
//
//  Created by william Vise on 1/2/2022.
//

import SwiftUI

struct Detail_sheet: View {
    var body: some View {
        ZStack {
            VStack {
                Text("").frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top ).background(Color(uiColor: UIColor(named: "foreg")!))
                
            }
            VStack{
                Text("").frame(width: UIScreen.main.bounds.width - 25, height: UIScreen.main.bounds.height - 150, alignment: .top).background(.white).cornerRadius(20)
            }
            VStack {
                Text("Whats the diffrence between \n Patern and Custom?").fontWeight(.bold).padding(.top,50)
                Text("Pattern cookies are exactly what you see in the picture \n \nCustom cookies can have custom text, colors and dietary changes.").frame(width: UIScreen.main.bounds.width - 29, height: 160, alignment: .top).padding([.top, .leading, .trailing],40)
                Text("What kind of customizations \n can you make?").fontWeight(.bold).padding(.top,40)
                Text("when you order a custom cookie the details of what you want added will be confirmed by our team").padding([.top, .leading, .trailing], 30)
                
            }
        }
    }
}

struct Detail_sheet_Previews: PreviewProvider {
    static var previews: some View {
        Detail_sheet()
    }
}
