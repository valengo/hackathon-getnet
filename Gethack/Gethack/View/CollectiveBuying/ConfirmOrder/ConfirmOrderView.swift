//
//  ConfirmOrderView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ConfirmOrderView: View {
    
    @ObservedObject var viewModel = ConfirmOrderViewModel()
    
    var body: some View {
        VStack {
            PaymentMethodView()
                .padding(.leading)
                .padding(.bottom, 30)
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            
            CardInfoView(card: $viewModel.card)
                .padding(.leading)
            Spacer()
            
            NavigationLink(destination: OrderConfirmationResultView(state: $viewModel.state)
                            .onAppear {viewModel.payWithCreditCard()}){
                Image("Confirm")
            }
        }
        .padding([.top, .bottom])
        
    }
}

struct OrderConfirmationResultView: View {
    @Binding var state: ConfirmOrderState
    
    var body: some View {
        VStack {
            if state == .loading {
                LoadingView()
            } else if state == .success {
                OrderConfirmedView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ConfirmOrderView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmOrderView()
    }
}
