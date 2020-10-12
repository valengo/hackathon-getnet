//
//  OrderConfirmedView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct OrderConfirmedView: View {
    var body: some View {
        VStack(alignment: .center){
            OrderInfoView()
            
            Spacer()
            
            VStack {
                Button(action: {}, label: {
                    Image("Download")
                })
            }
        }
        .padding([.leading, .trailing, .top, .bottom])
    }
}

struct OrderConfirmedView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmedView()
    }
}
