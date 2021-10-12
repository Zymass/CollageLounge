//
//  CardView.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 30.09.2021.
//

import SwiftUI

struct CardView: View {

    @StateObject var model = CardModel()
    var body: some View {
            VStack{
                
                    Image("LogoMain")
                            .resizable()
                            .frame(width: 250, height: 200, alignment: .center)
                

                Spacer()
                ZStack{
                    Rectangle().cornerRadius(40).foregroundColor(Color.white).shadow(radius: 20)
                        .padding(.horizontal)
                        .padding(.vertical,80)
                        
                    VStack {
                        Image("QR-code")
                            .padding(25)
                            
                        Text("Позовите официанта и покажите QR-код")
                            .font(.body).foregroundColor(Color.black.opacity(0.6))
                    }
                }.padding(.horizontal,10)
                Spacer()
            }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
