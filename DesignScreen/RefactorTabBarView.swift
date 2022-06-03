//
//  RefactorTabBarView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorTabBarView: View {
    @State var selected = 0
    
    var body: some View {
        
        HStack {
            Spacer()
            
            makeTabButton(image: "menu1", buttonIndex: 0)
            
            Spacer()
            
            makeTabButton(image: "chart1", buttonIndex: 1)
            
            Spacer()
            
            makeTabButton(image: "file", buttonIndex: 2)
            
            Spacer()
            
            makeTabButton(image: "gear", buttonIndex: 3)
            Spacer()
            
        }
        .padding()
        .background(Color.black.clipShape(Capsule()))
        .padding()
        
    }
    private func makeTabButton(image name: String, buttonIndex: Int) -> some View {
        Button {
            withAnimation(.easeInOut) {
                selected = buttonIndex
            }
        } label: {
            Image(name)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(selected == buttonIndex ? .white : .gray)
        }
        .frame(width: 35, height: 35)
        .padding(.vertical, 10)
    }
}

struct RefactorTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorTabBarView()
    }
}
