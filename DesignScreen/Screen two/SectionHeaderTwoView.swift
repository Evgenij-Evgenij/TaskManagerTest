//
//  SectionHeaderTwoView.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 23.05.2022.
//

import SwiftUI

struct SectionHeaderTwoView: View {
    var image1 = String()
    var title =  String()
    var with: CGFloat = 35
    var height: CGFloat = 35
    var backgroundColor: Color
//    var fonColor: Color
    
    var body: some View {
        LazyVStack(alignment: .leading) {
            HStack {
                
                Image(image1)
                    .resizable()
                    .padding(5)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: with, height: height)
                    .clipShape(Rectangle())
                    .padding(5)
                    .background(backgroundColor.opacity(0.1), in: Rectangle())
                    .cornerRadius(15)
                
                Text(title)
                    .bold()
                    .padding(.leading, 15)
            }
        }
        .padding()
        
    }
}

struct SectionHeaderTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderTwoView( backgroundColor: Color.gray)
    }
}
