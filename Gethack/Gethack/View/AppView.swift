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
            
            HomeFeedView()
                .tabItem {
                    Image("Home")
                    Text("Home")
                }
            
            CollectiveBuyingView()
                .tabItem {
                    Image("Compras")
                    Text("Compras")
                }
            
            ExchangeFeedView()
                .tabItem {
                    Image("Permuta")
                    Text("Permuta")
                }
            
            ProfilePageView()
                .tabItem {
                    Image("PerfilCinza")
                    Text("Perfil")
                }
        }
        .accentColor(.ourRed)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
