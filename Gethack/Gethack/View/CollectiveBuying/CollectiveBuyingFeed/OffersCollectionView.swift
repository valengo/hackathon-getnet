//
//  OffersCollectionView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct OffersCollectionView: View {
    
    @ObservedObject var viewModel = OffersCollectionViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<viewModel.offers.count) { item in
                HStack {
                    ForEach(0..<viewModel.offers[item].count) { index in
                        Spacer()
                        let offer = viewModel.offers[item][index]
                        NavigationLink(destination: ProductView(offerViewModel: offer)){
                            OfferCollectionView(offerViewModel: offer)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                    }
                }

            }
        }
    }
}

struct OffersCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        OffersCollectionView()
    }
}
