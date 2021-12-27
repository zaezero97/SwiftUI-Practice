//
//  test.swift
//  image-tutorial
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct test: View {
    var body: some View {
        HStack(alignment: .top) {
            Divider()
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
        }//.frame(height: 300)
        .background(Color.black)
            
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
