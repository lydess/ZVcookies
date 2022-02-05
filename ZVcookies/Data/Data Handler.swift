//
//  Data Handler.swift
//  ZVcookies
//
//  Created by william Vise on 31/1/2022.
//

import Foundation
import CoreData

class datahandler {
    let handler = PersistenceController.shared.container.viewContext
    var Productitem = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
    var Cartitem = NSFetchRequest<NSFetchRequestResult>(entityName: "cartitem")
    
    func addcartitem() {
        Productitem.returnsObjectsAsFaults = false
        let example = NSSortDescriptor(key: "cartid", ascending: true)
        var final = [NSFetchRequestResult]()
        Productitem.sortDescriptors = [example]
        
    }
    
    func getPL() -> [NSFetchRequestResult] {
        Productitem.returnsObjectsAsFaults = false
        let example = NSSortDescriptor(key: "idnum", ascending: true)
        var final = [NSFetchRequestResult]()
        Productitem.sortDescriptors = [example]
        do {
            let result = try handler.fetch(Productitem)
            
            for x in result{
                let item = x as! Product
                print(item.idnum)
            }
           final = result
            
        }
        
        catch{print("shes fucked mate")}
        return final
    }
    
    func AddSquare(product: storeproduct) {
        Productitem.returnsObjectsAsFaults = false
        for _ in 0...0 {
        let rawcookie: Product = Product.init(context: handler)
        rawcookie.descrip = "example cook"
        rawcookie.price = "210 dollary dos"
        rawcookie.name = "funny cookie"
        let currentid = getPL().last as! Product
        let newone = currentid.idnum
            
        rawcookie.idnum = Int32(newone + 1)
            
        }
        do {
            try handler.save()
        }catch{print("oop, it boopd")}
    }
    
    func bincookies() {
        Productitem.returnsObjectsAsFaults = false
        do {
            let result = try handler.fetch(Productitem)
            for x in result {
                let deets = x as! NSManagedObject
                handler.delete(deets)
                
            }
        }
        catch {print("failed")}
    }
    
    func deletelast() {
        
        Productitem.returnsObjectsAsFaults = false
        do {
            let result = try handler.fetch(Productitem).last
            
            handler.delete(result as! NSManagedObject)
        }catch{print("error")}
        
    }
}
