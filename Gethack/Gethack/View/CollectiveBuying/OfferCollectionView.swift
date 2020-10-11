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
                .frame(width: 170, height: 200)
                .foregroundColor(.ourGray)
            VStack {
                Image("Product-Chokito")
                Text("Chocolate Chokito")
                    .font(.system(.headline))
                Text("caixa c/ 30 un")
                    .font(.system(size: 15))
                Text("R$12,00")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.ourRed)

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
