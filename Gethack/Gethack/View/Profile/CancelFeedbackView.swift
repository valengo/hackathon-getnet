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
            Text("Sua compra foi cancelada")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 40)
            Text("Gostaria de nos informar o motivo do cancelamento?")
                .padding(.bottom, 40)
            
            
            CancelReasonsView()
            Spacer()
            NavigationLink(
                destination: CancelConfirmedView(),
                label: {
                    Image("TelaInicial")
                })
            
        }
    }
}

struct CancelFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        CancelFeedbackView()
    }
}
