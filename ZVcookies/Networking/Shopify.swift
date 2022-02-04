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
    
    func example() {
       
        
        
        let getoneproduct = Storefront.buildQuery { $0
            .node(id: GraphQL.ID(rawValue: "Z2lkOi8vc2hvcGlmeS9Qcm9kdWN0LzY3MDMzMzI1NTY4NjE=")) { $0
                .onProduct { $0
                    
                
                    .title()
                    
                }
                    
                }
            }
        
        let task = client.queryGraphWith(getoneproduct) { response, error in
            let name = response?.node as! Storefront.Product
            print(name.title)
        }
        task.resume()
        
       

    }
    
    func getProductslist() async -> URL {
        var fina1l = URL(string: "74081")
        let getallproducts = Storefront.buildQuery { $0
                .products(first: 10) { $0
                .edges { $0
                .node { $0
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
        
        let task = await client.queryGraphWith(getallproducts) { response, error in
            let name = response?.products.edges
            
            for x in name! {
                var me = x.node.title
                for i in x.node.images.edges {
                    workingdata.takeback = i.node.url
                    print("workingdata saved!")
                    
                    
                }
                
            }
            
            
        }
        task.resume()
    
        return fina1l!

        
    }
    
    func getProductsQuery() async -> GraphQL.ID {
        var me = GraphQL.ID(rawValue: "")
        let query = Storefront.buildQuery { $0
                .products(first: 10) { $0
                .edges() { $0
                    .node() { $0
                        .id()
                        .title()
                        .images(first: 10) { $0
                                        .edges { $0
                                            .node { $0
                                                .id()
                                                .src()
                                            }
                                        }
                                    }
                       
                        
                    }
                }
                }
            }
        let task = client.queryGraphWith(query) { response, error in
            let name = response?.products.edges[0].node.id
            print(name!)
            me = name!
            
           
            
        }
        task.resume()
        return me
        
       }
    
    func getProductslistTEST() async {
       
        let getallproducts = Storefront.buildQuery { $0
                .products(first: 10) { $0
                .edges { $0
                .node { $0
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
        
        let task = await client.queryGraphWith(getallproducts) { response, error in
            let name = response?.products.edges
            
            for x in name! {
                var title = x.node.title
                var prodid = x.node.id
                var imageurl = URL(string: "")
                for image in x.node.images.edges {
                    imageurl = image.node.url
                }
                var newproudct = storeproduct(title: title, pid: prodid, price: "", imageurl: imageurl!)
                print("Newproduct generated: " + title + " \(prodid) " + "\(imageurl!)")
                workingdata.activeproducts.append(newproudct)
                
            }
            print("contents of active products" + "\(workingdata.activeproducts.debugDescription)")
            
        }
        task.resume()
    
       

        
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
