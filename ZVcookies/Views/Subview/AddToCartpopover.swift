//
//  AddToCartpopover.swift
//  ZVcookies
//
//  Created by william Vise on 5/2/2022.
//

import SwiftUI
import Buy
import Pay
import CachedAsyncImage

struct AddToCartpopover: View {
    var product:storeproduct
    var body: some View {
        VStack {
            CachedAsyncImage(url: product.imageurl)
            HStack {
                Text(product.title)
            }
        }
    }
}

struct AddToCartpopover_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartpopover(product: storeproduct(title: "memes", pid: GraphQL.ID(rawValue: "2134234"), price: Decimal(10), imageurl: URL(string: "https://www.instagram.com/p/CZG_P4iJ4Np/")!, cellid: 1))
    }
}
