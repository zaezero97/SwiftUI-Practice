//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State
    var shouldShowAlert = false
    
   
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            Rectangle()
                .frame(height: 0) // 가로로 늘리기 위해
            Text("제제로 프로젝트")
                .font(.system(size: 23))
                .foregroundColor(shouldShowAlert ? .black : .purple)
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
                
                Button(action: {
                    print("확인 버튼이 클릭되었다.")
                   self.shouldShowAlert = true
                   
                }) {
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창"), message: Text("해피뉴이어"))
                }
               
                    
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
