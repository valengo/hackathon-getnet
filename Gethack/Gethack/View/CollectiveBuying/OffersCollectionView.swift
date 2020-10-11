//
//  OffersCollectionView.swift
//  Gethack
//
//  Created by Eduarda Mello on 10/10/20.
//

import SwiftUI

struct OffersCollectionView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<OfferCollectionView.row) { item in
                HStack {
                    ForEach(0..<OfferCollectionView.column) { item in
                        Spacer()
                        OfferCollectionView()
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
