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
                VStack(alignment: .center) {
                    Text("Compras")
                    Text("Coletivas")
                        .padding(.bottom, 5)
                    Text("03")
                        .font(.system(.largeTitle)).bold()
                        .foregroundColor(.red)
                }
                .frame(width: 100)
                Spacer()
                VStack(alignment: .center) {
                    Text("Serviços")
                    Text("Trocados")
                        .padding(.bottom, 5)
                    Text("01")
                        .font(.system(.largeTitle)).bold()
                        .foregroundColor(.red)
                }
                .frame(width: 100)
                Spacer()
                VStack(alignment: .center) {
                    Text("Produtos")
                    Text("Trocados")
                        .padding(.bottom, 5)
                    Text("00")
                        .font(.system(.largeTitle)).bold()
                        .foregroundColor(.red)
                }
                .frame(width: 100)
            }.frame(width: UIScreen.main.bounds.width - 50)
            .padding(.bottom, 20)
            
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
