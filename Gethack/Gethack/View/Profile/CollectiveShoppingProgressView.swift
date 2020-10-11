//
//  CollectiveShoppingProgressView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct CollectiveShoppingProgressView: View {
    var body: some View {
        List {
            HStack {
                Image("Clock")
                VStack {
                    Text("Cocoa-Cola Lata - 50un")
                    Text("Em progresso")
                }
                Spacer()
                Image("Arrow")
            }
        }
    }
}

struct CollectiveShoppingProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveShoppingProgressView()
    }
}
