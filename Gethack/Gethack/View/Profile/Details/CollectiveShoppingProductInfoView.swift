//
//  CollectiveShoppingProductInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CollectiveShoppingProductInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Coca-Cola Lata (355ml)")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 5)
            Text("Código da Compra - F82390-BB")
                .font(.system(size: 22))
                .padding(.bottom, 5)
            Text("Compra feita em 10/10/2020")
                .font(.system(size: 20))
            Text("Pago com cartão Visa **** 6789")
                .font(.system(size: 20))
                .padding(.bottom, 40)
            Text("50 Unidades Adquiridas")
                .font(.system(size: 20, weight: .bold))
            Text("Preço Total: R$100,00")
                .font(.system(size: 20, weight: .bold))
            
        }
    }
}

struct CollectiveShoppingProductInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveShoppingProductInfoView()
    }
}
