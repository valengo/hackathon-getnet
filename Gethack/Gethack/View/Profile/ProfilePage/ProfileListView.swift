//
//  ProfileListView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ProfileListView: View {
    var body: some View {
        
        List {
            NavigationLink (
                destination: CollectiveShoppingProgressView(),
                label: {
                    HStack{
                        Image("ShoppingCart")
                        Text("Ver minhas compras coletivas")
                    }
                })
            NavigationLink (
                destination: CollectiveShoppingProgressView(),
                label: {
                    HStack{
                        Image("Configuration")
                        Text("Ver meus serviços trocados")
                    }
                })
            NavigationLink (
                destination: CollectiveShoppingProgressView(),
                label: {
                    HStack{
                        Image("Products")
                        Text("Ver meus produtos trocados")
                    }
                })
            NavigationLink (
                destination: CollectiveShoppingProgressView(),
                label: {
                    HStack{
                        Image("Cards")
                        Text("Ver meus cartões")
                    }
                })
        }.listStyle(PlainListStyle())
        
        
        
        
        
        
    }
}

struct ProfileList_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}
