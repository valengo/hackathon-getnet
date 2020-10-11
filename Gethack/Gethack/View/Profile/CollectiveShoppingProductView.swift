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
            
            Image("Comprovante")
            
            CollectiveShoppingProductSellerView()
            
            Spacer()
            
            HStack {
                Button(action: {}, label: {
                    Image("Adquirir")
                })
                NavigationLink(
                    destination: CancelView(),
                    label: {
                        Image("Cancelar")
                    })
                
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
