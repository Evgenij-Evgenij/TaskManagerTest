//
//  Clock.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 27.05.2022.
//

import SwiftUI

struct Clock: View {
    private var time = ["07.00","08.00","09.00","10.00","11.00","12.00","13.00","14.00","15.00","16.00","17.00","18.00"]
    var body: some View {
        
        ScrollView {
            VStack(spacing:45){
                ForEach(time.indices) { index in
                   Text(time[index])
                        .font(.footnote)
                }
                
            }
            
        }
    }
}

struct Clock_Previews: PreviewProvider {
    static var previews: some View {
        Clock()
    }
}
