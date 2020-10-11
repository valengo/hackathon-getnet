//
//  CardInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CardInfoView: View {
            
    @Binding var card: CardViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Insira as informações do seu contato")
                .font(.system(size: 20, weight: .bold))
                .padding(.bottom)
            Text("Número do cartão")
                .font(.system(size: 20))
            TextField("**** 4321", text: $card.cardNumber)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Validade")
                        .font(.system(size: 20))
                    TextField("mm/aaaa", text: $card.validity)
                }
                VStack(alignment: .leading) {
                    Text("CVV")
                        .font(.system(size: 20))
                    TextField("***", text: $card.securityCode)
                }
            }
            Text("Nome do Titular")
                .font(.system(size: 20))
            TextField("Digite o nome", text: $card.cardholderName)
        }
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView(card: .constant(CardViewModel()))
    }
}
