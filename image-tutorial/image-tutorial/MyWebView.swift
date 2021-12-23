//
//  MyWebView.swift
//  image-tutorial
//
//  Created by 재영신 on 2021/12/23.
//

import SwiftUI
import WebKit

// UIKit 의 UIView 를 사용할 수 있도록 한다.
struct MyWebView: UIViewRepresentable {
    func updateUIView(_ uiView: WKWebView, context: Context) {
    
    }
    
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
