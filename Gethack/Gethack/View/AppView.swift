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

            ExchangeFeedView()
                .tabItem {
                    Image("Home").renderingMode(.template)
                    Text("Home")
                }
            
            CollectiveBuyingView()
                .tabItem {
                    Image("Compras").renderingMode(.template)
                    Text("Compras")
                }
            
            HomeFeedView()
                .tabItem {
                    Image("Permuta").renderingMode(.template)
                    Text("Permuta")
                }
            
            ProfilePageView()
                .tabItem {
                    Image("PerfilCinza").renderingMode(.template)
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
