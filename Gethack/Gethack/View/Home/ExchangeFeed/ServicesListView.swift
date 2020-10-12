//
//  ServicesListView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ServicesListView: View {
    var body: some View {
        List {
            NavigationLink(
                destination: ServiceDetailView(),
                label: {
                    HStack {
                        Image("Img1")
                        VStack(alignment: .leading) {
                            Text("Identidade Visual")
                                .font(.system(size: 25, weight: .bold))
                                .padding(.bottom, 5)
                            Text("Quero uma logo para meu serviço como eletricista")
                                .font(.system(size: 22))
                                .padding(.bottom, 10)
                            Text("400 pontos")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.ourRed)
                        }
                    }
                })
            
            NavigationLink(
                destination: ServiceDetailView(),
                label: {
                    HStack {
                        Image("Img2")
                        VStack(alignment: .leading) {
                            Text("Reformas e reparos")
                                .font(.system(size: 25, weight: .bold))
                                .padding(.bottom, 5)
                            Text("Quero uma rampa para melhorar a acessibilidade na minha loja!")
                                .font(.system(size: 22))
                                .padding(.bottom, 10)
                            Text("400 pontos")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.ourRed)
                        }
                    }
                })
            
            NavigationLink(
                destination: ServiceDetailView(),
                label: {
                    HStack {
                        Image("Img3")
                        VStack(alignment: .leading) {
                            Text("TI e assistência técnica")
                                .font(.system(size: 25, weight: .bold))
                                .padding(.bottom, 5)
                            Text("Meu computador está muito lerdo e preciso de ajuda!")
                                .font(.system(size: 22))
                                .padding(.bottom, 10)
                            Text("400 pontos")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.ourRed)
                        }
                    }
                })
        }.listStyle(PlainListStyle())
    }
}

struct ServicesListView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesListView()
    }
}
