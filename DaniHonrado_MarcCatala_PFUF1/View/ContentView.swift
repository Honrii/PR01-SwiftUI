//
//  ContentView.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 25/02/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var productManager: ProductManager
    
    @State var isActive:Bool = false
    
    var body: some View {
        VStack{
            if self.isActive{
                MainView().environmentObject(self.productManager)
               // TestView().environmentObject(self.productManager)
            } else {
                welcomeView()
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}
