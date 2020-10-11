//
//  LoadingView.swift
//  Gethack
//
//  Created by Andressa Valengo on 11/10/20.
//

import SwiftUI

struct LoadingView: View {
    @State var play = 0
    
    var body: some View {
        VStack{
            LottieView(name: "loading", play: $play)
                .frame(width:100, height:100)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
