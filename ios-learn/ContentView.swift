//
//  ContentView.swift
//  ios-learn
//
//  Created by 许士涛 on 2021/2/25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        // 垂直布局
        VStack {
            Text("Hello, Taylen!")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            SwiftUIWebView()
                .edgesIgnoringSafeArea(Edge.Set.top)
                .border(Color.red)
            
            Button(action: {
                print("hello")
            }, label: {
                Text("Button")
            })
            
            // 水平布局
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Button 1")
                })
                Button(action: {}, label: {
                    Text("Button2")
                })
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
