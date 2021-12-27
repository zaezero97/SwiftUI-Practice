//
//  test.swift
//  SwiftUI_Stack_Practice
//
//  Created by 재영신 on 2021/12/27.
//

import SwiftUI

struct test: View {
    @State var text: String = "abc"
    var body: some View {
        Form{
            Text(text)
            TextField("abc", text: $text)
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}


