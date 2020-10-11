//
//  DeadlineInputView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct DeadlineInputView: View {
    
    @State private var textField: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Qual prazo esperado para o projeto")
                .font(.system(size: 25, weight: .bold))
            Spacer()
            HStack {
                Text("Pontos")
                    .font(.system(size: 35))
                    .padding(.trailing)
                TextField("1 semana", text: $textField)
            }
            Spacer()
            NavigationLink(
                destination: CommentInputView(),
                label: {
                    Image("Continuar")
                })
        }
        .padding()
    }
}

struct DeadlineInputView_Previews: PreviewProvider {
    static var previews: some View {
        DeadlineInputView()
    }
}
