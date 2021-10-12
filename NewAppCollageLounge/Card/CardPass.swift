//
//  CardPass.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 29.09.2021.
//

import SwiftUI

struct CardPass: View {
    @ObservedObject var model = CardModel()
    var body: some View {
        HStack{
            Text("Карта постоянного гостя").font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
                .padding(.leading, 20.0)
            VStack{
                Image("LogoLitWhite")
                    .resizable()
                    .padding([.top, .trailing], 10.0)
                    .frame(width: 160.0, height: 80.0)
                Image("QR-codeWhite")
                    .resizable()
                    .padding([.bottom, .trailing], 10.0)
                    .frame(width: 100, height: 100)
            }
            
        }.background(Color.black)

    }
}

struct CardPass_Previews: PreviewProvider {
    static var previews: some View {
        CardPass()
    }
}
