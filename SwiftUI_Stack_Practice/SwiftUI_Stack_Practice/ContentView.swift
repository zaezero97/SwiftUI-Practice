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
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
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
