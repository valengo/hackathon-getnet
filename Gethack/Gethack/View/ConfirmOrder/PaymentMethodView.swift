//
//  PaymentMethodView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct PaymentMethodView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Confirmar pedido")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 20)
            Text("Escolha seu método de pagamento:")
                .padding(.bottom)
            HStack {
                Button(action: {}, label: {
                    Image("Billet")
                })
                
                Button(action: {}, label: {
                    Image("CreditCard")
                })
            }
            .frame(width: UIScreen.main.bounds.width,alignment: .center)
            .padding(.bottom, 30)
            
            HStack {
                Image("EllipseGray")
                VStack(alignment: .leading) {
                    Text("Cartão de Crédito")
                        .font(.system(size: 15, weight: .bold))
                    Text("Mastercard **** 4321")
                        .font(.system(size: 15, weight: .thin))
                }
            }
            HStack {
                Image("EllipseChecked")
                
                Text("Novo Cartão")
                    .font(.system(size: 15, weight: .bold))
                
            }
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            
    }
}

struct PaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethodView()
    }
}
