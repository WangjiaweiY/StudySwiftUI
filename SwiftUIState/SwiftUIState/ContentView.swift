//
//  ContentView.swift
//  SwiftUIState
//
//  Created by 王嘉炜 on 2024/6/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSelected = false
    var body: some View {
        Button(action: {
            self.isSelected.toggle()
        }) {
            Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                .font(.system(size: 150))
                .foregroundColor(isSelected ? Color(red: 112/255, green: 182/255, blue: 3/255) : Color(red: 170/255, green: 170/255, blue: 170/255))
        }
        titleView(isSelected: $isSelected)
    }
}

#Preview {
    ContentView()
}

struct titleView: View {
    
    @Binding var isSelected: Bool

    var body: some View {

        Text(isSelected ? "已开启" : "未开启")
            .fontWeight(.bold)
            .font(.system(size: 17))
            .padding()
    }
}

