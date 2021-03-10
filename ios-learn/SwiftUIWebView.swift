//
//  SwiftUIWebView.swift
//  ios-learn
//
//  Created by 许士涛 on 2021/3/9.
//

import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<SwiftUIWebView>) -> WKWebView {
            return WKWebView()
        }
    
    func updateUIView(_ uiview: WKWebView, context: UIViewRepresentableContext<SwiftUIWebView>) {
        let myUrl = URL(string: "https://www.baidu.com")
        let myReq = URLRequest(url: myUrl!)
        uiview.load(myReq)
    }
}

struct SwiftUIWebView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWebView()
    }
}
