//
//  ContentView.swift
//  image-tutorial
//
//  Created by 재영신 on 2021/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                
                Image("Zaezero")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 10)
                
                CircleImageView()
                HStack {
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com")) {
                        Text("유트브 보러가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com")) {
                        Text("오픈카톡방 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                }.padding(50)
                    Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
