//
//  Card.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 18.05.2022.
//

import SwiftUI

struct Card: View, ShapeStyle {
    var body: some View {
        ZStack{
//            RoundedRectangle(cornerRadius: 15)
//                .frame(width: 400, height: 250)
            Image("305e7c1aee")
                .resizable()
                .frame(width: 400, height: 250)
                .cornerRadius(15)                
            
            VStack(alignment: .leading){
                Text("Limited Offer")
                    .foregroundStyle(LinearGradient(colors: [Color.blue, Color.green], startPoint: .leading, endPoint: .trailing))
                
                Text("Join Vacana Premium and get your unlimited acces!")
                    .foregroundColor(.white)
                    .frame(width: 250, height: 80, alignment: .leading)
                    .font(.title3.bold())
                
                Button {
                    print("press Join now")
                } label: {
                    Text("Join Now")
                }
                .frame(width: 120, height: 50)
                .background(.white)
                .cornerRadius(10)
                .foregroundColor(.black)
                .font(.body.bold())

                    

            }
            
            .padding(.leading, -81.0)
           
        }
        
        .padding()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
