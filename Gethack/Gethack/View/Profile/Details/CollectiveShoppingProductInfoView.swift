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
                .frame(width: 410, alignment: .leading)
            Text("Código da Compra - F82390-BB")
                .font(.system(size: 22))
            Text("Compra feita em 10/10/2020")
                .font(.system(size: 18))
            Text("Pago com cartão Visa **** 6789")
                .font(.system(size: 18))
                .padding(.bottom, 25)
            Text("50 Unidades Adquiridas")
                .font(.system(size: 20, weight: .bold))
            Text("Preço Total: R$100,00")
                .font(.system(size: 20, weight: .bold))
                .padding(.bottom, 30)
            
        }
        .padding(.leading)
    }
}

struct CollectiveShoppingProductInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveShoppingProductInfoView()
    }
}
