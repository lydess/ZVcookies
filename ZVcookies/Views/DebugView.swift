//
//  DebugView.swift
//  ZVcookies
//
//  Created by william Vise on 31/1/2022.
//

import SwiftUI

struct DebugView: View {
    var body: some View {
        VStack {
            Button("DB test"){
                DB.getPL()
            }
            Button("DB add"){
                DB.bakecookie()
            }
            Button("DB delete"){
                DB.bincookies()
            }
        }
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
