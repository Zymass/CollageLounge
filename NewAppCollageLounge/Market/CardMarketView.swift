//
//  CardMarketView.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 01.10.2021.
//

import SwiftUI

struct CardMarketView: View {
   @ObservedObject var model = CardMarket()
    var body: some View {
        ScrollView(.horizontal) {
            HStack{
            ForEach(model.market){object in
                Image(object.pic).resizable().frame(width: 200, height: 200)
                Text("\(object.price)")
            }
            }
        }
    }
}

struct CardMarketView_Previews: PreviewProvider {
    static var previews: some View {
        CardMarketView()
    }
}
