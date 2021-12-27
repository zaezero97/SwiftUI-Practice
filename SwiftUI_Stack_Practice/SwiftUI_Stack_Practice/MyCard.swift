//
//  MyCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct MyCard: View {
    
    
    
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 50))
                .foregroundColor(.white)
                //.frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(title)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start) ~ \(end)")
                    .foregroundColor(.white)
            }
            
            
        }.padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "doc.fill", title: "호호호", start: "10:00", end: "12:00", bgColor: .yellow)
    }
}
