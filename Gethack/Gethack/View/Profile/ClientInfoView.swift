//
//  ClientInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ClientInfoView: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                VStack {
                    Text("Compras Coletivas")
                    Text("03")
                        .font(.system(.largeTitle)).bold()
                        .foregroundColor(.red)
                }
                .frame(width: 80)
                Spacer()
                VStack {
                    Text("Serviços Trocados")
                    Text("01")
                        .font(.system(.largeTitle)).bold()
                        .foregroundColor(.red)
                }
                .frame(width: 80)
                Spacer()
                VStack {
                    Text("Produtos Trocados")
                    Text("00")
                        .font(.system(.largeTitle)).bold()
                        .foregroundColor(.red)
                }
                .frame(width: 80)
            }.frame(width: UIScreen.main.bounds.width - 50)
            .padding(.bottom, 40)
            
            VStack (alignment: .leading) {
                Text("Endereço")
                    .bold()
                Text("Rua Cláudio Morelli, 72, Atuba")
                    .padding(.bottom, 5)
                Text("CNPJ")
                    .bold()
                Text("12.345.678/1999-12")
            }
        }
    }
}

struct ClientInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ClientInfoView()
    }
}
