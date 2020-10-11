//
//  TabView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            CollectiveBuyingView()
                .tabItem {
                    Image("BuyingIcon")
                    Text("Compras")
                }
            ProfilePageView()
                .tabItem {
                    Image("BuyingIcon")
                    Text("Compras")
                }
            
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
