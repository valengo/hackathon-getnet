//
//  ProfileList.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ProfileList: View {
    var body: some View {
        
        List {
            NavigationLink (
                destination: CollectiveShoppingProgressView(),
                label: {
                    HStack{
                        Image("ShoppingCart")
                        Text("Ver minhas compras coletivas")
                        Spacer()
                        Image("Arrow")
                    }
                })
                .buttonStyle(PlainButtonStyle())
            HStack{
                Image("Configuration")
                Text("Ver meus serviços trocados")
                Spacer()
                Image("Arrow")
            }
            HStack{
                Image("Products")
                Text("Ver meus produtos trocados")
                Spacer()
                Image("Arrow")
            }
            HStack{
                Image("Cards")
                Text("Ver meus cartões")
                Spacer()
                Image("Arrow")
            }
            
        }
        
        
        
        
    }
}

struct ProfileList_Previews: PreviewProvider {
    static var previews: some View {
        ProfileList()
    }
}
