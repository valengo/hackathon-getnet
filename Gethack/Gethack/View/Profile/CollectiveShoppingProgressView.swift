//
//  CollectiveShoppingProgressView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CollectiveShoppingProgressView: View {
    var body: some View {
        List {
            HStack {
                Image("Clock")
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text("Cocoa-Cola Lata - 50un")
                        .bold()
                    Text("Em progresso")
                }
                Spacer()
                Image("Arrow")
            }
            HStack {
                Image("Check")
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text("Batom Líquido Eudora - 20un")
                        .bold()
                    Text("Finalizado")
                }
                Spacer()
                Image("Arrow")
            }
            HStack {
                Image("Check")
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text("Fralda Pampers G - 45un")
                        .bold()
                    Text("Finalizado")
                }
                Spacer()
                Image("Arrow")
            }

        }
    }
}

struct CollectiveShoppingProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveShoppingProgressView()
    }
}
