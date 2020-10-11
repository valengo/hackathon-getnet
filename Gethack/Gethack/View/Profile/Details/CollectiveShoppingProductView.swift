//
//  CollectiveShoppingProductView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CollectiveShoppingProductView: View {
    var body: some View {
        VStack(alignment: .leading) {
            CollectiveShoppingProductInfoView()
            
            HStack {
                Spacer()
                Image("Comprovante")
                Spacer()
            }
            .padding(.bottom, 30)
            
            
            CollectiveShoppingProductSellerView()
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Image("Adquirir")
                })
                NavigationLink(
                    destination: CancelView(),
                    label: {
                        Image("Cancelar")
                    })
                Spacer()
                
            }
        }
        .padding()
    }
}

struct CollectiveShoppingProductView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveShoppingProductView()
    }
}
