//
//  Evalaution.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 18.05.2022.
//

import SwiftUI

struct Evalaution: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(height: 250)
            VStack {
                HStack {
                    Text("Evalaution")
                        .font(.title3.bold())
                    Spacer()
                    Text("January, 20")
                        .foregroundColor(.gray)
                }
                .padding()
                
                HStack {
                    
                    HStack{
                        
                        LoaderRing()
                        
                        Text("Completed Activities")
                            .font(.subheadline.bold())
                            .frame(width: 100, height: 50)
                    }
                    Spacer()
                    HStack {
                        LoaderRing(color1: Color.green, color2: .green.opacity(0.7), numbers: 6)
                        Text("Pending Activities")
                            .font(.subheadline.bold())
                            .frame(width: 100, height: 50)
                    }
                } .padding()
                
                Button {
                    print("Show more")
                } label: {
                    Text("Show More")
                       
                }
                
                .frame(width: 350, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .font(.body.bold())
                .cornerRadius(10)
                .shadow(color: .blue, radius: 8, x: 3, y: 3)
                .padding()

            
            }
            
            
                
        }
        .padding()
    }
        
}

struct Evalaution_Previews: PreviewProvider {
    static var previews: some View {
        Evalaution()
    }
}
