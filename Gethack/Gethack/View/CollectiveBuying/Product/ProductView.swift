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
                        .font(.system(size: 25, weight: .bold))
                    Spacer()
                    Image(systemName: "bookmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 25)
                }
                
                BuyerInfoView()

                
                ButtonsView()
                    .padding(.top, 120)
                    
                
                
                
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
