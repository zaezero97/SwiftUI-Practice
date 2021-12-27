//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct MyProjectCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Rectangle()
                .frame(height: 0) // 가로로 늘리기 위해
            Text("제제로 프로젝트")
                .font(.system(size: 23))
                .foregroundColor(.black)
                .padding(.bottom, 5)
            Text("10 AM ~ 11AM")
                .foregroundColor(.gray)
                .padding(.bottom, 10)
            HStack {
                Image("user1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(.red)
                    )
                Image("user2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("user3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
                    
            }
        }.padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
