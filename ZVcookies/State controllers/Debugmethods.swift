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
        
        let filePath1 = Bundle.main.path(forResource: "UNI_0034-2.jpeg", ofType: "")!
        let filePath2 = Bundle.main.path(forResource: "MON_0035-2.jpeg", ofType: "")!
        let filePath3 = Bundle.main.path(forResource: "IMG_0036.jpeg", ofType: "")!
        
        var examplelist = [storeproduct]()
        let example1 = storeproduct(title: "Cookies", pid: GraphQL.ID(rawValue: ""), price: 0.5, imageurl: URL(fileURLWithPath: filePath1), cellid: 0)
        let example2 = storeproduct(title: "Cookie bag", pid: GraphQL.ID(rawValue: ""), price: 0.5, imageurl: URL(fileURLWithPath: filePath2), cellid: 1)
        let example3 = storeproduct(title: "cookie king", pid: GraphQL.ID(rawValue: ""), price: 0.5, imageurl: URL(fileURLWithPath: filePath3), cellid: 2)
        
        examplelist.append(contentsOf: [example1,example2,example3])
        
        workingdata.activeproducts = examplelist
    }
}
