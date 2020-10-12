//
//  RequesterInfoView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct RequesterInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Solicitante")
            HStack {
                Image("Eletricista")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading) {
                    Text("João de Souza")
                        .font(.system(size:    15, weight: .bold))
                        .padding(.bottom, 5)
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.9")
                    }
                }
            }
        }
    }
}

struct RequesterInfoView_Previews: PreviewProvider {
    static var previews: some View {
        RequesterInfoView()
    }
}
