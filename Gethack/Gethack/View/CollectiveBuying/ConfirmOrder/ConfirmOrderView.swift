//
//  ConfirmOrderView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ConfirmOrderView: View {
    var body: some View {
        VStack {
            PaymentMethodView()
                .padding(.leading)
                .padding(.bottom, 30)
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            
            CardInfoView()
                .padding(.leading)
            Spacer()
            NavigationLink(destination: OrderConfirmedView()){
                Image("Confirm")
            }
        }
        .padding([.top, .bottom])
        
    }
}

struct ConfirmOrderView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmOrderView()
    }
}
