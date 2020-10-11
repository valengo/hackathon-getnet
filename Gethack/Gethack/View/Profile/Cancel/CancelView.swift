//
//  CancelView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CancelView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tem certeza que deseja cancelar sua compra?")
                .font(.system(size: 25, weight: .bold))
            HStack {
                Image("Warning")
                Text("O cancelamento não poderá ser desfeito!")
            }
            Spacer()
            Text("Ao cancelar sua compra, seu dinheiro será reembolsado")
                .bold()
            Spacer()
            NavigationLink(
                destination: CancelFeedbackView(),
                label: {
                    Image("Cancelar2")
                })
            
        }
        .padding()
    }
}

struct CancelView_Previews: PreviewProvider {
    static var previews: some View {
        CancelView()
    }
}
