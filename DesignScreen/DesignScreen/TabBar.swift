//
//  TabBar.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 19.05.2022.
//

import SwiftUI

struct TabBar: View {
    @State var selected = 0
    
    var body: some View {
       VStack{
            Spacer()
            
            ZStack{
                HStack{
                    
                    
                    Button {
                        self.selected = 0
                    } label: {
                        Image("menu1")
                            .resizable()
                            .colorInvert()
                    }
                    .opacity(self.selected == 0 ? 1 : 0.5)
                    .frame(width: 35, height: 35)
                    
                    Spacer()
                    
                    Button {
                        self.selected = 1
                    } label: {
                        Image("chart1")
                            .resizable()
                            .colorInvert()
                    }
                    .opacity(self.selected == 1 ? 1 : 0.5)
                        .frame(width: 35, height: 35)
                    
                    Spacer()
                    
                    Button {
                        self.selected = 2
                    } label: {
                        Image("file")
                            .resizable()
                            .colorInvert()
                    }
                    .opacity(self.selected == 2 ? 1 : 0.5)
                        .frame(width: 35, height: 35)

                    Spacer()
                    
                    Button {
                        self.selected = 3
                    } label: {
                        Image("gear")
                            .resizable()
                            .colorInvert()
                    }
                    .opacity(self.selected == 3 ? 1 : 0.5)
                    .frame(width: 35, height: 35)


                    
    

                }
                .padding()
                .cornerRadius(10)
                .background(.black)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34)).frame(width: 330, height: 60)
                
                
           }
           Spacer().frame(height: 20)
        }
    
        
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
