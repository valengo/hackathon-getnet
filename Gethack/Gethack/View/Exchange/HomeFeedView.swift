//
//  HomeFeedView.swift
//  Gethack
//
//  Created by Eduarda Mello on 11/10/20.
//

import SwiftUI

struct HomeFeedView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Olá!")
                        .font(.system(size: 25, weight: .bold))
                    Spacer()
                }
                Text("Do que você precisa hoje?")
                    .font(.system(size: 25, weight: .bold))
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image("Servicos2")
                    })
                    .padding(.bottom, 20)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image("Produtos2")
                    })
                    .padding(.bottom, 20)
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Permuta", displayMode: .inline)
            
            
            
        }
        .accentColor(.ourRed)
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
