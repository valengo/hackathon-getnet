//
//  ProfilePageView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ProfilePageView: View {
    
    var body: some View {
    
        NavigationView {
            VStack {
                    Image("User")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 200, height: 200)
                    Text("Maria Helena Borba")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom, 20)
                    ClientInfoView()
                    ProfileListView()
                        .padding(.leading, -35)
                        .padding(.trailing, -35)
                        .padding(.bottom, -50)
            }
            .padding()
            .navigationBarTitle("Meu Perfil", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {}, label: {
                    Image(systemName: "bell")
                })
            )
        }
        .accentColor(.ourRed)
        
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
