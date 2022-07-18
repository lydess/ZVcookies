//
//  Debugmethods.swift
//  ZVcookies
//
//  Created by william Vise on 18/7/2022.
//

import Foundation
import Buy

class DebugMethods{
    func addSampleProducts() {
        var examplelist = [storeproduct]()
        var example1 = storeproduct(title: "Cookies", pid: GraphQL.ID(rawValue: ""), price: 0.5, imageurl: URL(fileURLWithPath: ""), cellid: 0)
        var example2 = storeproduct(title: "Cookie bag", pid: GraphQL.ID(rawValue: ""), price: 0.5, imageurl: URL(fileURLWithPath: ""), cellid: 1)
        var example3 = storeproduct(title: "cookie king", pid: GraphQL.ID(rawValue: ""), price: 0.5, imageurl: URL(fileURLWithPath: ""), cellid: 3)
        
        examplelist.append(contentsOf: [example1,example2,example3])
        
        workingdata.activeproducts = examplelist
    }
}
