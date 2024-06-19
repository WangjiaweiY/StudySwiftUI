//
//  ContentView.swift
//  SwiftUIList
//
//  Created by 王嘉炜 on 2024/6/12.
//

import SwiftUI

struct ContentView: View {
    
    var Messages = [
        Message(name: "这是微信", image: "weixin"),
        Message(name: "这是苹果", image: "apple"),
        Message(name: "这是QQ", image: "QQ")
    ]

    
    var body: some View {
        NavigationView {
            List(Messages.indices, id: \.self) { index in
                NavigationLink(destination: DetailView(message : Messages[index])) {
                    HStack {
                        Image(self.Messages[index].image)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(5)
                        Text(self.Messages[index].name)
                    }
                }
                
            }.navigationBarTitle("我是标题", displayMode: .inline)
        }
    }
}

struct Message {
    var name: String
    var image: String
}

struct DetailView: View {
    
    @Environment(\.presentationMode) var mode
    var message: Message
    
    var body: some View {
        VStack {
            Image(message.image)
                .resizable()
                .frame(width: 80, height: 80)
            Text(message.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.gray)
        })
    }
}

#Preview {
    ContentView()
}
