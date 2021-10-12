//
//  FeedBackView.swift
//  NewAppCollageLounge
//
//  Created by Feduk on 01.10.2021.
//

import SwiftUI

struct FeedBackView: View {
    @State var feedBack = ""
    @ObservedObject var model = FeedBackModel()
    var body: some View {
        VStack {
            HStack {
                Text("Оцените сервис").font(.largeTitle).fontWeight(.bold)
                Spacer()
            }.padding()
            HStack{
                Image(systemName: "star").font(.largeTitle)
                Image(systemName: "star").font(.largeTitle)
                Image(systemName: "star").font(.largeTitle)
                Image(systemName: "star").font(.largeTitle)
                Image(systemName: "star").font(.largeTitle)

            }.padding()
            Text("Вам понравилось у нас? Есть ли замечания или пожелания? Напишите нам").padding()
            VStack {
                HStack {
                    Text("Ваш комментарий:")
                        .font(.headline)
                    Spacer()
                }
                ZStack {
                    
                    Rectangle().frame(width: 400, height: 50).cornerRadius(30).foregroundColor(Color.white).shadow(radius: 5)
                    TextField("Оставьте отзыв", text: $feedBack).padding(.horizontal)
                }
            }.padding()
            Spacer()
            Text("Вы можете добавить комментарий. Отзыв увидит только руководство").foregroundColor(Color.gray.opacity(0.6)).padding(.horizontal)
            ZStack{
                Rectangle().cornerRadius(30).frame(width: 400, height: 50)
            Button("Оценить", action: model.sendFeed).foregroundColor(Color.white).background(Rectangle())

            
            }.padding(.horizontal)
        }
    }
}

struct FeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedBackView()
    }
}
