//
//  NameAndCalendar.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 18.05.2022.
//

import SwiftUI

struct NameAndCalendar: View {
    var body: some View {
        VStack{
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
        .padding()
    }
}

struct NameAndCalendar_Previews: PreviewProvider {
    static var previews: some View {
        NameAndCalendar()
        
    }
}
