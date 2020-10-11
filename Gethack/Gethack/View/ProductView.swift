//
//  ProductView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            GeometryReader { reader in
                Image("Coca")
                    .resizable()
            }
            .frame(height: 239)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Coca-Cola Lata (355ml)")
                        .font(.system(size: 30, weight: .bold))
                    Spacer()
                    Image(systemName: "bookmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                }
                
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
                    .frame(alignment: .center)
                
                Text("170/300")
                Text("unidades adquiridas")
                
                Text("5")
                Text("compradores")
                
                
                
            }
            .padding([.leading, .trailing])
            .padding(.top, 25)
            .background(Color.white)
            .cornerRadius(20)
            .offset(y: -30)
        })
        .edgesIgnoringSafeArea(.all)
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
