//
//  ContentView.swift
//  SwiftUI_Stack_Practice
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct ContentView: View {
    
   
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack (alignment: .leading, spacing: 10){

                HStack {
                    Image(systemName: "line.horizontal.3").font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill").font(.largeTitle)
                }.padding(10)

                Text("제제로 할 일목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                ScrollView {
                    MyProjectCard()
                    MyCard(icon: "flame.fill", title: "운동하기", start: "10:00", end: "12:00", bgColor: .blue)
                    MyCard(icon: "tv.fill", title: "티비보기", start: "15:00", end: "17:00", bgColor: .red)
                    MyCard(icon: "cart.fill", title: "마트 장보기", start: "19:00", end: "21:00", bgColor: .orange)
                    MyCard(icon: "gamecontroller.fill", title: "롤 하기", start: "9:00", end: "19:00", bgColor: .black)

                }

            }.padding()

            Circle().foregroundColor(.yellow).frame(width: 60,height: 60)
                .overlay(Image(systemName: "plus").font(.system(size: 30)))
                .foregroundColor(.white)
                .padding(.trailing, 10)
                .shadow(radius: 20)
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
