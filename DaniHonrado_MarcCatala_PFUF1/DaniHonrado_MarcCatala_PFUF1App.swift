//
//  DaniHonrado_MarcCatala_PFUF1App.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 25/02/2021.
//

import SwiftUI

@main
struct DaniHonrado_MarcCatala_PFUF1App: App {

    @StateObject var productManager = ProductManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(productManager)
                
        }	
    }
}
