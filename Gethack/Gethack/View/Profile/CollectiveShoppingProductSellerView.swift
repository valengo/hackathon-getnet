//
//  CollectiveShoppingProductSellerView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CollectiveShoppingProductSellerView: View {
    var body: some View {
        VStack(alignment: .leading) {
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
            
            Text("Local de entrega")
                .font(.system(size: 20, weight: .bold))
            Text("Rua Nicola Pellanda, 4188, Pinheirinho")
                .font(.system(size: 20))
            
            Image("Bar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
                .padding(.bottom)
                .padding(.top, 50)
            
            Text("240/300")
                .font(.system(size: 20, weight: .bold))
            Text("unidades adquiridas")
                .font(.system(size: 20))
                .padding(.bottom)
            Text("7")
                .font(.system(size: 20, weight: .bold))
            Text("compradores")
                .font(.system(size: 20))
        }
    }
}

struct CollectiveShoppingProductSellerView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveShoppingProductSellerView()
    }
}
