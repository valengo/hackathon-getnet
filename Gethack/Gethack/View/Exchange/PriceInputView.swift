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
            HStack {
                Text("Qual valor que você deseja receber pelo serviço?")
                    .font(.system(size: 25, weight: .bold))
                Spacer()
            }
            .padding(.bottom, 30)
            
            Text("João sugeriu um valor de: 400 pontos")
                .padding(.bottom, 180)
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
                    Spacer()
                    Image("Continuar")
                    Spacer()
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
