//
//  OfferCollectionView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct OfferCollectionView: View {
    
    let offerViewModel: OfferViewModel

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 170, height: 200)
                .foregroundColor(.ourGray)
            VStack {
                Image(offerViewModel.imageName)
                Text(offerViewModel.name)
                    .font(.system(.headline))
                Text(offerViewModel.imageName.description)
                    .font(.system(size: 15))
                Text(offerViewModel.price)
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.ourRed)

            }
            .frame(width: 150, height: 190)
        }
        
    }
}
