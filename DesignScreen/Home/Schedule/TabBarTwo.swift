//
//  TabBarTwo.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 30.05.2022.
//

import SwiftUI

struct TabBarTwo: View {
    var body: some View {
        HStack{
           
            tabBarsett(img: "plus", text: "Add New Activity")
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15) .foregroundColor(.black))
       // .background(Color.black.clipShape(Capsule()))
      
        
    }
    private func tabBarsett (img: String, text: String) -> some View {
        Button {
            //
        } label: {
            HStack{
                Image(systemName: img)
                Text(text)
            }
            .padding(.horizontal, 25)
            .padding(5)
            .foregroundColor(.white)
            .font(.title3.bold())
            
        }

    }
}

struct TabBarTwo_Previews: PreviewProvider {
    static var previews: some View {
        TabBarTwo()
    }
}
