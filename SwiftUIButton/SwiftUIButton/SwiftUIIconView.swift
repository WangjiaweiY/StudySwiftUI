//
//  SwiftUIIconView.swift
//  SwiftUIButton
//
//  Created by 王嘉炜 on 2024/6/11.
//

import SwiftUI

struct SwiftUIIconView: View {
    var body: some View {
        HStack(spacing: 40) {
            iconBtnView(image: "apple")
            iconBtnView(image: "weixin")
            iconBtnView(image: "qq")
        }
    }
}

struct SwiftUIIconView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIIconView()
    }
}

struct iconBtnView: View {
    var image: String
    var body: some View {
        Button(action: {
            
        }) {
            Image(image)
                .resizable()
                .frame(minWidth: 0, maxWidth: 32, minHeight: 0, maxHeight: 32)
                .padding()
                .background(Color(red: 246 / 255, green: 246 / 255, blue: 246 / 255))
                .clipShape(Circle())
        }
    }
}
