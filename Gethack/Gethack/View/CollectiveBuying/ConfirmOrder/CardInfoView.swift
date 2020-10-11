//
//  CardInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CardInfoView: View {
    
    @State private var textField: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Insira as informações do seu contato")
                .font(.system(size: 20, weight: .bold))
                .padding(.bottom)
            Text("Número do cartão")
                .font(.system(size: 20))
            TextField("**** 4321", text: $textField)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Validade")
                        .font(.system(size: 20))
                    TextField("mm/aaaa", text: $textField)
                }
                VStack(alignment: .leading) {
                    Text("CVV")
                        .font(.system(size: 20))
                    TextField("***", text: $textField)
                }
            }
            
            Text("Nome do Titular")
                .font(.system(size: 20))
            TextField("Digite o nome", text: $textField)
            
            Text("CPF/CNPJ do Titular")
                .font(.system(size: 20))
            TextField("*********20", text: $textField)
        }
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView()
    }
}
