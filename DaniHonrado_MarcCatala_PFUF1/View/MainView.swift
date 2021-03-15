//
//  MainView.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 04/03/2021.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var productManager:ProductManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach (productManager.Categories, id: \.self) { category in
                   
                    
                    Text("\(category)").font(.title).bold()

                    ForEach(productManager.products, id:\.nom) { item in
                        if(item.tipus == category){
                            NavigationLink(
                                destination: shopView(producte: item)){
                                rowProduct(product: item)
                            }
                        }
                    }
                }
            }
        }
        
    }
    
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

