//
//  shopView.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 11/03/2021.
//

import SwiftUI

struct shopView: View {
    @State private var showAlert = false
    let producte:Product
    var body: some View {
        VStack{
            Image("Carrito")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack{
                Text(producte.nom ?? "Product name Error")
            }.font(.title)
            HStack{
                Text(producte.desc ?? "Descripció per defecte")
               
            }
            HStack{
                Text(String(format: "%.1f", producte.price ) + " €")
            }
           
            Button("Pagar"){
                showAlert=true
            }.alert(isPresented: $showAlert){
                Alert(title: Text("Compra realitzada"), message: Text("Gràcies per la compra"), dismissButton: .default(Text("D'acord")))
            }
        }.padding()
    }
}

/*struct shopView_Previews: PreviewProvider {
    static var previews: some View {
        shopView()
    }
}*/
