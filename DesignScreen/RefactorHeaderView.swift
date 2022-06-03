//
//  RefactorHeaderView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorHeaderView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text("Welcome Back,")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                
                Text("Jimmy Sullivan")
                    .font(.title.bold())
            }
            
            Spacer()
            
            Button {
                print("tab")
            } label: {
                HStack {
                    Text("25 Feb")
                    Image(systemName: "calendar")
                }
                .padding()
                .foregroundColor(Color.black)
                .font(.title3)
                .background(.white)
                .cornerRadius(10)
            }
        }
    }
}

struct RefactorHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorHeaderView()
    }
}
