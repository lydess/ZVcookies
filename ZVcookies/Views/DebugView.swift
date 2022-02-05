//
//  DebugView.swift
//  ZVcookies
//
//  Created by william Vise on 31/1/2022.
//

import SwiftUI
import Buy

struct DebugView: View {
    @State var doshow = false
    @State var fetching = false
    @State var makeaccount = false
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        VStack {
            List {
                Section{Button("DB test"){
                    DB.getPL()
                }
                Button("DB add"){
                    
                }
                Button("DB delete"){
                    DB.bincookies()
                }}
                Section{
                    Button("Get products test"){
                        fetching.toggle()
                    }
                    Button("Get SRC test"){
                        
                    }
                    
                    if fetching == true {
                        ProgressView("").progressViewStyle(.circular).task {
                            do{try await shop.GetShopifyProducts()
                                fetching.toggle()
                            }
                            catch{}
                        }
                    }
                    Button("make user account"){
                        makeaccount.toggle()
                    }
                }
                    if makeaccount == false{
                        
                    }else{
                        Section{
                            HStack {
                                Text("email")
                                Spacer()
                                TextField("Email", text: $email)
                            }
                            HStack {
                                Text("Password")
                                Spacer()
                                TextField("Password", text: $password)
                            }
                            Button("Submit"){
                                shop.Makeuser(emailstr: password, passwordstr: email)
                            
                                
                            }
                        }
                    }
                
                
                
            }
            
           
            
        }
       
    }
}

struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
