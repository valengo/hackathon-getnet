//
//  OffersTypeView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct OffersTypeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .bottom) {
                Text("Ofertas")
                    .font(.title).bold()
                Spacer()
                Text("Organizar por")
                    .foregroundColor(.gray)
            }
            .padding([.leading, .trailing])
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    Image("OffersType-selected")
                    Image("OffersType-notSelected1png")
                    Image("OffersType-notSelected1png")
                    Image("OffersType-notSelected1png")
                }
            })
        }
        .frame(height: 100)
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        OffersTypeView()
    }
}
