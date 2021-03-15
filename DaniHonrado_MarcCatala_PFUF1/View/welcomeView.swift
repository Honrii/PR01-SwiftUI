//
//  welcomeView.swift
//  DaniHonrado_MarcCatala_PFUF1
//
//  Created by alumne on 25/02/2021.
//

import SwiftUI

struct welcomeView: View {
    

    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white,.blue]), startPoint: .top, endPoint: .bottom)
            Image("Daedo")
                .resizable()
                .frame(width: 250, height: 200, alignment: .center)
                .padding(.trailing, 20)
        }
            
    }
}

struct welcomeView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView()
    }
}
