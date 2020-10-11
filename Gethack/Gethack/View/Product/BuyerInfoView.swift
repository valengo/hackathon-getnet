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
                .foregroundColor(.red)
                .font(.system(size: 35, weight: .bold))
            
            HStack {
                Image("Seller")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                Text("Oferta por Lucas Roseira")
            }
            
            Text("Local de entrega")
            Text("Rua Nicola Pellanda, 4188, Pinheirinho")
            
            Image("Bar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
                .padding()
            
            Text("170/300")
            Text("unidades adquiridas")
            
            Text("5")
            Text("compradores")
        }
    }
}

struct BuyerInfo_Previews: PreviewProvider {
    static var previews: some View {
        BuyerInfoView()
    }
}
