//
//  Harcoded.swift
//  ZVcookies
//
//  Created by william Vise on 30/1/2022.
//

import Foundation
import SwiftUI
import Buy
import Pay

struct cookiedata{
    let uid = UUID()
    let pageid:Int
    var photo:Image
    var price:Int
    var title:String
}

struct Homebutton{
    let uid = UUID()
    let pageid:Int
    let maintext:String
}

struct Throwaway{
    let uid = UUID()
}

struct storeproduct {
    var title:String
    var pid:GraphQL.ID
    var price:Decimal
    var imageurl:URL
    var cellid:Int
    
}

struct storeorder {
    var product:storeproduct
    var completed:Bool
}
class hardcoded  {
    func getcatalog() -> [cookiedata] {
        let cookie1 = cookiedata(pageid: 0, photo: Image(uiImage: UIImage(named: "cookie2")!).resizable() , price: 10, title: "normal cookie")
        let cookie2 = cookiedata(pageid: 1, photo: Image(uiImage: UIImage(named: "cookie2")!).resizable() , price: 15, title: "unormal cookie")
        let cookie3 = cookiedata(pageid: 2, photo: Image(uiImage: UIImage(named: "cookie2")!).resizable() , price: 5, title: "somewhat normal  cookie")
        let cookie4 = cookiedata(pageid: 4, photo: Image(uiImage: UIImage(named: "cookie2")!).resizable() , price: 20, title: "alien cookie")
        let cookie5 = cookiedata(pageid: 5, photo: Image(uiImage: UIImage(named: "cookie2")!).resizable() , price: 50, title: "another normal cookie")
        
        let cookielist = [
            cookie1,
            cookie2,
            cookie3,
            cookie4,
            cookie5
        ]
        
        
        return cookielist
    }
    
    func getlistitem() {
        
    }
    
    func gethomelayout() -> [Homebutton] {
        let aboutbutton = Homebutton(pageid: 1, maintext: "About us")
        let storebutton = Homebutton(pageid: 2, maintext: "What we have")
        
        let buttonlist = [
        aboutbutton,
        storebutton
        ]
        return buttonlist
        
    }
    
}
