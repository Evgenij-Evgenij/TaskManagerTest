//
//  MaretsTarget.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 18.05.2022.
//

import SwiftUI

struct MaretsTarget: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.white) 
                .frame(height: 250)
            
            VStack{
                
                HStack{
                    Text("Maret's target")
                        .font(.title3.bold())
                    Spacer()
                    Text("10 Target")
                        .foregroundColor(.gray)
                }
                
                
                HStack{
                    Image(systemName:"checkmark")
                        .resizable().frame(width: 18, height: 12)
                        .font(.body.bold())
                        .foregroundStyle(LinearGradient(colors: [Color.blue, Color.green], startPoint: .leading, endPoint: .trailing))
                        
                    Text("Mythical Glory on Land of Dawn")
                        .font(.body)
                    Spacer()
                }
                
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 18, height: 12)
                        .font(.body.bold())
                        .foregroundStyle(LinearGradient(colors: [Color.blue, Color.green], startPoint: .leading, endPoint: .trailing))
                    Text("Upload 4 Shot & 1 Product on Dribbble")
                    Spacer()
                }
                Spacer().frame(height: 40)
                HStack {
                    
                    Button {
                        print("Press View All")
                    } label: {
                        Text("Viewv All")
                            .padding()
                            .frame(width: 350)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
                    .cornerRadius(10)
                    .shadow(color: .blue, radius: 8, x: 3, y: 3)
                    
                }
            }.padding()
            
            
            
                
        }.padding()
        
    }
        
}

struct MaretsTarget_Previews: PreviewProvider {
    static var previews: some View {
        MaretsTarget()
    }
}
