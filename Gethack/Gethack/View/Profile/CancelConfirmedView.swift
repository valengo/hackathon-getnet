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
            Text("Sua compra foi cancelada")
                .font(.system(size: 25, weight: .bold))
            Spacer()
            Text("Agradecemos sua resposta!")
            Spacer()
        }
    }
}

struct CancelConfirmedView_Previews: PreviewProvider {
    static var previews: some View {
        CancelConfirmedView()
    }
}
