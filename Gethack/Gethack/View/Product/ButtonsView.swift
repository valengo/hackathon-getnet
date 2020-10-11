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
            Button(action: {}, label: {
                Image("Order")
            })
            
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
