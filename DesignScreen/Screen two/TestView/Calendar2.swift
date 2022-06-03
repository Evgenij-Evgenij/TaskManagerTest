//
//  Calendar2.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 20.05.2022.
//

import SwiftUI

struct Calendar2: View {
    
    
    var body: some View {
        HStack {
            NumbAndDate(day: "Mon", numb: "21", numbBut: 0)
            NumbAndDate(day: "Tue", numb: "22", numbBut: 1)
        }
    }
}

struct Calendar2_Previews: PreviewProvider {
    static var previews: some View {
        Calendar2()
    }
}

struct NumbAndDate: View {
    var day: String
    var numb: String
    @State var numbBut = 0
    
    var body: some View{
        VStack{
            Button {
                self.numbBut = numbBut
            } label: {
                VStack(spacing: 10){
                    Text(day)
                    Text(numb)
                }
                .padding(.vertical, 10)
                .padding(10)
                
                .cornerRadius(10)
                
            }
            .background(self.numbBut == numbBut ? .blue : .clear)

        }
    }
}
