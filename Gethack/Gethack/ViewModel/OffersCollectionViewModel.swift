//
//  OffersCollectionViewModel.swift
//  Gethack
//
//  Created by Andressa Valengo on 11/10/20.
//

import Combine


struct OfferViewModel {
    let name: String
    let description: String
    let price: String
    let imageName: String
}

class OffersCollectionViewModel: ObservableObject {
    @Published var offers: [[OfferViewModel]] = [
        [OfferViewModel(name: "Chocolate Chokito",
                        description: "caixa c/ 20 un",
                        price: "R$ 12,00",
                        imageName: "Product-Chokito"),
         OfferViewModel(name: "Chá Matte Leão",
                         description: "caixa c/ 12 un",
                         price: "R$ 12,00",
                         imageName: "Product-Matte")],
        
        [OfferViewModel(name: "Coca-Cola",
                        description: "lata",
                        price: "R$ 2,00",
                        imageName: "Product-Coca"),
         OfferViewModel(name: "Tubes Fini",
                         description: "caixa c/ 12 un",
                         price: "R$ 15,00",
                         imageName: "Product-Fini")],
        
        [OfferViewModel(name: "Doritos",
                        description: "pacote",
                        price: "R$ 2,30",
                        imageName: "Product-Doritos"),
         OfferViewModel(name: "Cápsulas Pilão",
                         description: "caixa c/ 100 un",
                         price: "R$ 45,00",
                         imageName: "Product-Pilao")]
    ]
}
