//
//  MyBasicCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "flame.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
                //.frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text("하하하")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer().frame(height: 5)
                
                Text("하하하")
                    .foregroundColor(.white)
            }
            
            
        }.padding(30)
        .background(Color.purple)
        .cornerRadius(20)
    
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
