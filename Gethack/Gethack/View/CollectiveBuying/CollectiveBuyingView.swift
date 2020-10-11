//
//  CollectiveBuyingView.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import SwiftUI

struct CollectiveBuyingView: View {
    @State private var textField: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Search", text: $textField)
                    Image(systemName: "mic.fill")
                }
                .padding([.leading, .trailing])
                
                OffersTypeView()
                    .padding(.leading)
                OffersCollectionView()
            }
            .navigationBarTitle("Compra Coletiva", displayMode: .inline)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CollectiveBuyingView()
    }
}
