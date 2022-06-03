//
//  SectionView.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 24.05.2022.
//

import SwiftUI

struct SectionView: View {
    var image = String()
    var widthIcon: CGFloat = 40
    var haightIcon: CGFloat = 40
    var textHeader = String()
    
    var body: some View {
        VStack{
            HStack{
                Image("manRunning")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: widthIcon, height: haightIcon)
                    .padding(5)
                    .background(Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.2)
                        .cornerRadius(10))
                
                Text("Joggin in the Morning")
                    .bold()
            }
            
            HStack{
                Image(systemName: "minus")
                
                Text("xfbfbzfdbzvvz")
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
