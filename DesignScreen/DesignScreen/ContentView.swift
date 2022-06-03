//
//  ContentView.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 18.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       // ScrollView {
           
        ZStack {
            VStack{
                
                ScrollView {
                    
                    NameAndCalendar()
                    Card()
                    ActivityList()
                    MaretsTarget()
                    Evalaution()
                }
            }
            
            TabBar()
        }
        .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
