//
//  ProposalSentView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ProposalSentView: View {
    var body: some View {
        VStack {
            Image("PropostaEnviada")
                .padding(.top, 130)
            Text("Proposta enviada!")
                .font(.system(size: 25, weight: .bold))
            Text("João vai analisar a sua proposta e você receberá uma notificação quando ele decidir!")
                .multilineTextAlignment(.center)
            Spacer()
            Image("Concluir")
        }
        .padding()
    }
}

struct ProposalSentView_Previews: PreviewProvider {
    static var previews: some View {
        ProposalSentView()
    }
}
