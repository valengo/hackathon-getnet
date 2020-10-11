//
//  ServicesTypeView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ServicesTypeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .bottom) {
                Spacer()
                Text("Organizar por")
                    .foregroundColor(.gray)
            }
            .padding([.leading, .trailing])
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    Image("AssistenciaTecnica")
                    Image("OffersType-notSelected1png")
                    Image("Cosmeticos")
                    Image("OffersType-notSelected1png")
                }
            })
        }
        .frame(height: 100)
    }
}

struct ServicesTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesTypeView()
    }
}

