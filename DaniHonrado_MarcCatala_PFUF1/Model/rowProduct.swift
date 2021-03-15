//
//  rowProduct.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 04/03/2021.
//

import SwiftUI

struct rowProduct: View {
    let product:Product
    var body: some View {
        //Text(product.nom ?? "Nom per defecte").font(.title2)
        VStack(alignment: .leading){
            Text(product.nom ?? "Nom per defecte").font(.title)
            HStack{
                Text(product.desc ?? "Descripció per defecte")
                Spacer()
                Text(String(format: "%.1f", product.price ) + " €")
            }
               
        }
    }
    	
}

/*struct rowProduct_Previews: PreviewProvider {
    static var previews: some View {
        rowProduct()
    }
}*/
