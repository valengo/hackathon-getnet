//
//  ServiceInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ServiceInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Img10")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Categoria")
            Text("Design")
                .bold()
                .padding(.bottom, 5)
            Text("Serviço")
            Text("Identidade visual")
                .bold()
                .padding(.bottom, 5)
            Text("Prazo esperado")
            Text("2 semanas")
                .bold()
                .padding(.bottom, 5)
            Text("Valor desejado")
            Text("400 pontos")
                .bold()
                .padding(.bottom, 5)

            
        }
    }
}

struct ServiceInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceInfoView()
    }
}
