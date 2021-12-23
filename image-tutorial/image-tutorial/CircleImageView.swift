//
//  CircleImageView.swift
//  image-tutorial
//
//  Created by 재영신 on 2021/12/23.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("Zaezero")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 30, x: 0, y: 0)
            .overlay(
                Circle().foregroundColor(.black)
                    .opacity(0.4)
            )
            .overlay(
                Circle().stroke(Color.red,lineWidth: 10)
                    
            )
            .overlay(
                Circle().stroke(Color.yellow,lineWidth: 10)
                    .padding(10)
            )
            .overlay(
                Circle().stroke(Color.blue,lineWidth: 10)
                    .padding(20)
            )
            .overlay(
                Text("재제로")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            )
         //   .aspectRatio(contentMode: .fill)
           // .frame(width: 200,height: 300)
            //.clipped()
            .edgesIgnoringSafeArea(.all)
    }
    
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
