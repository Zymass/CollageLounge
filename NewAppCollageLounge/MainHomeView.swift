//
//  MainHomeView.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 30.09.2021.
//

import SwiftUI

struct MainHomeView: View {
    @StateObject var modelCard = CardModel()
    @ObservedObject var modelPhoto = PhotoModel()
    
    var body: some View {
        NavigationView{
        ScrollView{
            VStack(spacing: 40){
                Image("LogoMain")
                    .resizable()
                    .frame(width: 250, height: 200, alignment: .center)
                Spacer()
                NavigationLink(destination: CardView()) {
                CardPass().cornerRadius(30)
                }
                VStack{
                    HStack {
                        Text("Галлерея")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 30.0)
                            .opacity(0.6)
                        Spacer()
                    }
                Image("photoLogo")
                    .resizable()
                    .frame(width: 360, height: 200)
                    .cornerRadius(30)
                    .onTapGesture {
                        modelPhoto.openVK()
                        }
                    }
                
                VStack{
                    HStack {
                        Text("Меню")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 30.0)
                            .opacity(0.6)
                        Spacer()
                    }
                    Link(destination: URL(string: "https://www.apple.com")!) {
                    Image("menuLogo")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(30)
                    }
                    }
                VStack{
                    
                    HStack {
                        Text("Оставьте отзыв!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 30.0)
                            .opacity(0.6)
                        Spacer()
                    }
                    NavigationLink(destination: FeedBackView()){
                    Image("menuLogo")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(30)
                    }
                }
                VStack{
                    HStack {
                        Text("Акции")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 30.0)
                            .opacity(0.6)
                        Spacer()
                    }
                NavigationLink(destination: FeedBackView()) {
                    SalesView().frame(width: 360, height: 400)
                        .cornerRadius(30)
                }
                }
                HStack{
                    CardMarketView()
                        .frame(width: 200.0, height: 200.0)
                }
                //Something
                
                
            }.padding(.vertical,15)
            }
        }
    }
}

struct MainHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeView()
    }
}

