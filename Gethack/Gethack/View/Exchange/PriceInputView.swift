//
//  PriceInputView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct PriceInputView: View {
    
    @State private var textField: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Qual valor que você deseja receber pelo serviço?")
                .font(.system(size: 25, weight: .bold))
            Text("João sugeriu um valor de: 400 pontos")
            Spacer()
            HStack {
                Text("Pontos")
                    .font(.system(size: 35))
                    .padding(.trailing)
                TextField("400", text: $textField)
            }
            Spacer()
            NavigationLink(
                destination: DeadlineInputView(),
                label: {
                    Image("Continuar")
                })
        }
        .padding()
    }
}

struct PriceInputView_Previews: PreviewProvider {
    static var previews: some View {
        PriceInputView()
    }
}
