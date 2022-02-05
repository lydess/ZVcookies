//
//  Shopify.swift
//  ZVcookies
//
//  Created by william Vise on 1/2/2022.
//

import Foundation
import Buy
import Pay

struct shopitem {
    var imgurl:String
    var title:String
    var price:String
}
class shopify {
    let client = Graph.Client(shopDomain: "storeofthedank.myshopify.com", apiKey: "af69a8e6ea84ae4f9c42c5f57ab650b6")

    
    
    func GetShopifyProducts() async throws {
        do {
       
        let getallproducts = Storefront.buildQuery { $0
                .products(first: 10) { $0
                .edges { $0
                .node { $0
                .variants(first: 1) { $0
                .edges { $0
                .node { $0
                .price()
               
                }
                }
                }
                .id()
            
                .title()

                .images(first: 10) { $0
                                .edges { $0
                                    .node { $0
                                        .id()
                                        .url()
                                        
                                        }
                                    }
                                }
                }
                    
                }
                    
                }
                
        }
        
        let task = client.queryGraphWith(getallproducts) { response, error in
          
          
            
            guard let name = response?.products.edges else {return}
            var cellcount = 0
            for x in name {
                let title = x.node.title
                let prodid = x.node.id
                var imageurl = URL(string: "")
                var pricedec = Decimal(1)
                for image in x.node.images.edges {
                    imageurl = image.node.url
                    
                }
                for vari in x.node.variants.edges{
                    pricedec = vari.node.price
                    
                }
                var newproudct = storeproduct(title: title, pid: prodid, price: pricedec, imageurl: imageurl!, cellid: cellcount)
                
                workingdata.activeproducts.append(newproudct)
                cellcount += 1
            }
            print("Loaded " + "\(workingdata.activeproducts.count)" + " Products")
            
            
        }
        task.resume()
            if workingdata.activeproducts.count == 0 {
                throw Networkingerror.fetchempty
            }
       

        } catch {
            
        }
    }
    
}


/*
 {
   products(first: 10) {
     edges {
       node {
         id
         title
         handle
        
         
         
       }
     }
   }
 }
 */
