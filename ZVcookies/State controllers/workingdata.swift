//
//  File.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import Foundation
import SwiftUI

class workingdata: ObservableObject {
    
    @Published var pickedscreen = 3
    @Published var doshowback = false
    static var takeback = URL(string: "ddd")
    static var activeproducts = [storeproduct]()
    
    func formatproducts() -> [storeproduct] {
        var workinglist = workingdata.activeproducts
        
        return workingdata.activeproducts
    }
    
}

