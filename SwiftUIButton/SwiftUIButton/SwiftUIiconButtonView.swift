//
//  SwiftUIIconView.swift
//  SwiftUIButton
//
//  Created by 王嘉炜 on 2024/6/11.
//

import SwiftUI

struct SwiftUIiconButtonView: View {
    var body: some View {
        VStack(spacing: 40) {
            iconTextBtnView(image: "a", title: "Apple登录")
            iconTextBtnView(image: "a", title: "Apple登录")
            iconTextBtnView(image: "a", title: "Apple登录")
        }
    }
}

struct SwiftUIiconButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIiconButtonView()
    }
}

struct iconTextBtnView: View {
    var image: String
    
    var title: String
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "applelogo")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(title)
                    .fontWeight(.semibold)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
            .cornerRadius(40)
            .padding(.horizontal, 20)
        }
    }
}
