//
//  CardMarketModel.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 01.10.2021.
//

import Foundation

class CardMarket:ObservableObject {
    @Published var isFaceUp = false
    @Published var cash = 1000
   
    @Published var market = [object(title: "Лемонад", price: 250, pic: "coctails"),
                             object(title: "Милкшейк", price: 200, pic: "milkshake"),
                             object(title: "Чаша", price: 900, pic: "chashaHookah")
    ]
    
    func lessCoins(price: Int) {
      cash -= price
    }
}



struct object: Identifiable {
    var id = UUID().uuidString
    var title: String
    var price: Int
    var pic: String
}
