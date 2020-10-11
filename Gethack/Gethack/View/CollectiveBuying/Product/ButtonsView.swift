//
//  ButtonsView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image("Picker")
            })
            Spacer()
            NavigationLink(destination: ConfirmOrderView()){
                    Image("Order")
            }
            
            
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
