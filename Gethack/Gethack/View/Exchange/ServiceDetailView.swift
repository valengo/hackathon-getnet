//
//  ServiceDetailView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct ServiceDetailView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ServiceInfoView()
                .padding(.bottom, 15)
            Divider()
                .padding(.bottom, 15)
            RequesterInfoView()
                .padding(.bottom, 130)
            NavigationLink(
                destination: PriceInputView(),
                label: {
                    Image("FazerServico")
                })
            
        }
        .edgesIgnoringSafeArea(.top)
        .padding([.leading, .trailing, .bottom])
        
    }
}

struct ServiceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceDetailView()
    }
}
