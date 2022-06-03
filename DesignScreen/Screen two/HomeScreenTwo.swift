//
//  HomeScreenTwo.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 20.05.2022.
//

import SwiftUI

struct HomeScreenTwo: View {
    var body: some View {
        ScrollView {
            VStack {
                Calendar()
                CustomDividerView()
                    //.navigationBarTitleDisplayMode(.inline)
                HStack {
                    VStack(spacing: 20) {
                        //-------
                        JogginMorning()
                        Reading()
                        ContinueViewTwo()
                        Meeting()
                        ContinueWork()
                        Diagram()
                    }
                    Clock()
                        .padding()
                }
                .padding()
                Color.clear.frame(height: 60)
            }
        }
        .overlay( VStack{
            Spacer()
            TabBarTwo()
        })
        .background(.gray.opacity(0.2))
        .navigationTitle(Text("February"))
        .toolbar(content: {
            Button {
                print("Press Calendar")
            } label: {
                Image(systemName: "calendar")
            }

        })
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

struct HomeScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTwo()
        
    }
}


