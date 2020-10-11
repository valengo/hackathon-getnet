//
//  ContentView.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = CreditCardPaymentViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
