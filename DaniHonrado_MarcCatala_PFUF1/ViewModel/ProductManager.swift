//
//  ProductManager.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 25/02/2021.
//

import Foundation
import SwiftUI
import CoreData

class ProductManager:ObservableObject{
  
    let Categories = ["Protecció", "Combat", "Entrenament", "Equipació"]
    @Published var products = [Product]()
      let context =
          PersistenceController.shared.container
          .viewContext
    
    
    init(){
        //if readProducts() {
            self.loadProductsHard()
        //}
    }
    
    func loadProductsHard(){
        let product1 = Product(context: context)
        product1.nom = "Protector Bucal"
        product1.desc = "Composición: Gelfit Color: Blanco"
        product1.price = 7.3
        product1.tipus = "Combat"
        
        let product2 = Product(context: context)
        product2.nom = "Dobok cuello negro WT"
        product2.desc = "Dobok de cuello negro. Chaqueta TAEKWONDO bordado en la espalda. Pantalón ancho con cintura elástica. Ligero. Composición: Poliéster 80%, Algodón 20%"
        product2.price = 27.0
        product2.tipus = "Equipació"
        
        let product3 = Product(context: context)
        product3.nom = "Casco Oficial WT"
        product3.desc = "Para competición y entrenamiento.Composición: Espuma recubierta de pintura plástica. Colores: Azul y Rojo "
        product3.price = 38.6
        product3.tipus = "Protecció"
        
        let product4 = Product(context: context)
        product4.nom = "Mitt"
        product4.desc = "Muy práctico en el entrenamiento. Duro y resistente. Composición: Espuma revestida de polipiel"
        product4.price = 25.0
        product4.tipus = "Entrenament"
        
        let product5 = Product(context: context)
        product5.nom = "PAO Iraní"
        product5.desc = "Composición: cuero. Dimensiones: 43 x 24 x 10 cm"
        product5.price = 62.6
        product5.tipus = "Entrenament"
        
        let product6 = Product(context: context)
        product6.nom = "Peto Oficial WT Reversible"
        product6.desc = "Reversible. Resistente y ligero. Para competición y entrenamiento. Modelo patentado. Composición:Polipiel, Espuma dura y Tejido elástico. Color: Azul-Rojo"
        product6.price = 38.60
        product6.tipus = "Combat"
        
        let product7 = Product(context: context)
        product7.nom = "Cinturón adulto Rojo 310cm"
        product7.desc = "Resistente y duradero. Composición: Algodón 100%"
        product7.price = 5.20
        product7.tipus = "Equipació"
        
        let product8 = Product(context: context)
        product8.nom = "Coquilla Femenina completa"
        product8.desc = "Composición: Espuma de goma, cubierto de plástico y polipiel"
        product8.price = 14.6
        product8.tipus = "Protecció"
        
        
        
       
        
        do{
        try context.save()
            products.append(product3)
            products.append(product2)
            products.append(product1)
            products.append(product4)
            products.append(product5)
            products.append(product6)
            products.append(product7)
            products.append(product8)
        }catch{
            print("Error loadMovies")
        }
        
        print("Products \(products)")
    }
    
    func readProducts(){
        let request:NSFetchRequest<Product> = Product.fetchRequest()
        
        do {
            self.products = try context.fetch(request)
        } catch {
            print("Could not fetch. \(error)")
        }
        print("leyendo")
    }
    
    func loadProducts<T: Decodable>() -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: "products.json", withExtension: nil)
            else {
                fatalError("Couldn't find products in main bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load products from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse products as \(T.self):\n\(error)")
        }
    }

}
