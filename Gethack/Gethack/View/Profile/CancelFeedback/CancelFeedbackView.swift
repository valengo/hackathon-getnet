//
//  CancelFeedbackView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CancelFeedbackView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Sua compra foi cancelada")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.bottom, 40)
                Spacer()
            }
            
            Text("Gostaria de nos informar o motivo do cancelamento?")
                .padding(.bottom, 60)
            
            HStack{
                Spacer()
                CancelReasonsView()
                Spacer()
            }
            Spacer()
            NavigationLink(
                destination: CancelConfirmedView(),
                label: {
                    Spacer()
                    Image("TelaInicial")
                    Spacer()
                })
        }
        .padding()
    }
}

struct CancelFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        CancelFeedbackView()
    }
}
