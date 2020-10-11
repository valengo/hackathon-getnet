//
//  ProfilePageView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct ProfilePageView: View {
    var body: some View {
        VStack {
            Image("User")
                .resizable()
                .clipShape(Circle())
                .frame(width: 200, height: 200)
            Text("Maria Helena Borba")
                .font(.system(size: 25, weight: .bold))
                .padding(.bottom, 20)
            ClientInfoView()
                .padding(.bottom, 20)
            ProfileList()
        }
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
