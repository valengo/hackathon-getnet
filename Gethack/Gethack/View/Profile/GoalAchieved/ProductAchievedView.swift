//
//  ProductAchievedView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ProductAchievedView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Bar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
                .padding(.bottom)
                .padding(.top, 50)
            Text("300/300")
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.ourRed)
            Text("unidades adquiridas")
                .padding(.bottom, 5)
            Text("9 compradores")
            
            HStack {
                Image("Seller")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                Text("Oferta por ")
                    .font(.system(size: 15))
                Text("Distribuidora Roseira")
                    .padding(.leading, -8)
                    .font(.system(size: 15, weight: .bold))
            }
            .padding(.bottom)
            
            Text("Coca-Cola Lata (355ml)")
                .font(.system(size: 20, weight: .bold))
                .padding(.bottom, 5)
            Text("Compra feita em 10/10/2020")
            
            Text("Pago com cartão Visa **** 6789")
               
            
        }
    }
}

struct ProductAchievedView_Previews: PreviewProvider {
    static var previews: some View {
        ProductAchievedView()
    }
}
