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
            HStack(alignment: .center) {
                Image("Warning")
                Text("O cancelamento não poderá ser desfeito!")
            }
            .padding(.bottom, 200)
            Text("Ao cancelar sua compra, seu dinheiro será reembolsado")
                .bold()
            Spacer()
            NavigationLink(
                destination: CancelFeedbackView(),
                label: {
                    Spacer()
                    Image("Cancelar2")
                    Spacer()
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
