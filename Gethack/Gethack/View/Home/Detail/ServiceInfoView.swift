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
                .frame(width: UIScreen.main.bounds.width)
            
            Text("Categoria")
                .padding(.leading)

            Text("Design")
                .bold()
                .padding(.bottom, 5)
                .padding(.leading)
            Text("Serviço")
                .padding(.leading)

            Text("Identidade visual")
                .bold()
                .padding(.bottom, 5)
                .padding(.leading)
            Text("Prazo esperado")
                .padding(.leading)
            Text("2 semanas")
                .bold()
                .padding(.bottom, 5)
                .padding(.leading)
            Text("Valor desejado")
                .padding(.leading)
            Text("400 pontos")
                .bold()
                .padding(.bottom, 5)
                .padding(.leading)
        }
    }
}

struct ServiceInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceInfoView()
    }
}
