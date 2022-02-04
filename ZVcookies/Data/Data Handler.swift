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
    var toptype = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
    
    
   

    
    func getPL() -> [NSFetchRequestResult] {
        toptype.returnsObjectsAsFaults = false
        var example = NSSortDescriptor(key: "idnum", ascending: true)
        var final = [NSFetchRequestResult]()
        toptype.sortDescriptors = [example]
        do {
            var result = try handler.fetch(toptype)
            
            for x in result{
                var item = x as! Product
                print(item.idnum)
            }
           final = result
            
        }
        
        catch{print("shes fucked mate")}
        return final
    }
    
    func bakecookie() {
        toptype.returnsObjectsAsFaults = false
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
        toptype.returnsObjectsAsFaults = false
        do {
            let result = try handler.fetch(toptype)
            for x in result {
                let deets = x as! NSManagedObject
                handler.delete(deets)
                
            }
        }
        catch {print("failed")}
    }
    
    func deletelast() {
        
        toptype.returnsObjectsAsFaults = false
        do {
            let result = try handler.fetch(toptype).last
            
            handler.delete(result as! NSManagedObject)
        }catch{"eh"}
        
    }
}
