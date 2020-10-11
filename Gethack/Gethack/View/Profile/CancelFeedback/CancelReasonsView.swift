//
//  CancelReasonsView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CancelReasonsView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("Opcao1")
                .padding(.bottom, 30)
            Image("Opcao2")
                    .padding(.bottom, 30)
            Image("Opcao3")
                .padding(.bottom, 30)
            Image("Opcao4")
                .padding(.bottom, 30)
        }
    }
}

struct CancelReasonsView_Previews: PreviewProvider {
    static var previews: some View {
        CancelReasonsView()
    }
}
