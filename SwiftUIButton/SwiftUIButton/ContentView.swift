//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by 王嘉炜 on 2024/6/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 15) {
            buttonView(title: "微信登录", bgColor: Color(red: 88/255, green: 224/255, blue:133/255))
            buttonView(title: "Apple登录", bgColor: Color(red: 51/255, green: 51/255, blue:51/255))
        }
    }
}

#Preview {
    ContentView()
}

struct buttonView: View {
    
    var title: String
    
    var bgColor: Color
    
    var body: some View {
        Button(action: {
            print("111")
        }) {
            Text(title)
                .font(.system(size: 20))
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(bgColor)
                .cornerRadius(5)
                .padding(.horizontal, 20)
        }
    }
}
