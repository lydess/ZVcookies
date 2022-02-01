//
//  Shopify.swift
//  ZVcookies
//
//  Created by william Vise on 1/2/2022.
//

import Foundation
import Buy
import Pay

class shopify {
    let client = Graph.Client(shopDomain: "storeofthedank.myshopify.com", apiKey: "af69a8e6ea84ae4f9c42c5f57ab650b6")
    
    func example() {
       
        let tquery = Storefront.buildQuery { $0
                .collections(first: 10, query: "bickies"){ $0
                
                }
        }
        
        let query = Storefront.buildQuery { $0
            .shop { $0
                .name()
               
                .refundPolicy { $0
                    .title()
                    .url()
                }
                .primaryDomain{$0
                .url()
                }
            }
        }
        
        let task = client.queryGraphWith(tquery) { response, error in
            let name = response?.collections
            print(name)
        }
        
       

    }
    
    func getProductsQuery(){
           
           let query = Storefront.buildQuery { $0
                   .collections(first: 10) { $0
                       .edges { $0
                           .node { $0
                               .id()
                               .title()
                               .products(first: 20) { $0
                                   .edges { $0
                                       .node { $0
                                           .id()
                                           .title()
                                           .description()
                                           .availableForSale()
                                           .priceRange { $0
                                               .maxVariantPrice { $0
                                                   .amount()
                                               }
                                           }
                                           .images(first: 1) { $0
                                               .edges { $0
                                                   .node { $0
                                                       .originalSrc()
                                                   }
                                               }
                                           }
                                           .variants(first: 10) { $0
                                               .edges() { $0
                                                   .node() { $0
                                                       .id()
                                                       .title()
                                                       .availableForSale()
                                                       .currentlyNotInStock()
                                                       .product { $0
                                                           .title()
                                                       }
                                                       .priceV2 { $0
                                                           .amount()
                                                       }
                                                   }
                                               }
                                           }
                                       }
                                   }
                               }
                           }
                       }
                   }
               
           }
        let task = client.queryGraphWith(query) { response, error in
            let name = response?.products
            print(name)
        }
       }
   }

