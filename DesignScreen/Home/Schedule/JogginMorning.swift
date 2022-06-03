//
//  JogginMorning.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 23.05.2022.
//

import SwiftUI

struct JogginMorning: View {
    var body: some View {
       VStack(alignment: .leading){
            
            SectionHeaderTwoView(image1: "manRunning", title: "Joggin in the Morning", with: 35, height: 35, backgroundColor: .gray)
                
            
            TextCard(text: "Inviting @synyster & @johny")
            
            TextCard(text: "Bring or Bottle of mineral water")
            
            
        }
        //.padding()
        .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
            .foregroundColor(.white))
    }
}

struct JogginMorning_Previews: PreviewProvider {
    static var previews: some View {
        JogginMorning()
    }
}

struct TextCard: View {
    
    var text = String()
    
    var body: some View {
        HStack {
            Spacer().frame(width: 83)
            Image(systemName: "minus")
                .resizable()
                .frame(width: 6, height: 2)
                
            Text(text)
                .foregroundColor(.gray)
                .font(.footnote)
        }
        
        .padding(.bottom)
        
        
    }
}
