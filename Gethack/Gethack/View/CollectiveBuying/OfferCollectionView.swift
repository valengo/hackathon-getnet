//
//  OfferCollectionView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct OfferCollectionView: View {
    
    static let column = 2
    static let row = 9
    
    var body: some View {
        
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 170, height: 190)
                .foregroundColor(.gray)
            VStack {
                Image("Product-Chokito")
                Text("Chokito")
                Text("caixa c/ 30 un")
                Text("R$12,00")

            }
            .frame(width: 150, height: 190)
        }
        
    }
}

struct OfferCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        OfferCollectionView()
    }
}
