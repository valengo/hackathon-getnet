//
//  BuyerInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct BuyerInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("R$2,00 un")
                .foregroundColor(.ourRed)
                .font(.system(size: 35, weight: .bold))
            
            HStack {
                Image("Seller")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                Text("Oferta por ")
                    .font(.system(size: 15))
                Text("Lucas Roseira")
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
            
            Text("170/300")
                .font(.system(size: 20, weight: .bold))
            Text("unidades adquiridas")
                .font(.system(size: 20))
                .padding(.bottom)
            Text("5")
                .font(.system(size: 20, weight: .bold))
            Text("compradores")
                .font(.system(size: 20))
        }
    }
}

struct BuyerInfo_Previews: PreviewProvider {
    static var previews: some View {
        BuyerInfoView()
    }
}
