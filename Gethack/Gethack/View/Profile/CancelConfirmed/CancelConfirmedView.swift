//
//  CancelConfirmedView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CancelConfirmedView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Sua compra foi cancelada")
                    .font(.system(size: 25, weight: .bold))
                Spacer()
            }
            
            Spacer()
            HStack{
                Spacer()
                Text("Agradecemos sua resposta!")
                    .bold()
                Spacer()
            }
            Spacer()
            Button(action: {}, label: {
                Spacer()
                Image("TelaInicial")
                Spacer()
            })
            .padding(.bottom)
        }
        .padding([.leading, .top, .trailing])
    }
}

struct CancelConfirmedView_Previews: PreviewProvider {
    static var previews: some View {
        CancelConfirmedView()
    }
}
