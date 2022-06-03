//
//  LoaderRing.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 19.05.2022.
//

import SwiftUI

struct LoaderRing: View {
    var color1 = Color.blue
    var color2 = Color.blue.opacity(0.3)
    private let width: CGFloat = 45
    private let height: CGFloat = 45
    var numbers = 20
    // var total = 100
    // var percent = 20
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.3), style: StrokeStyle(lineWidth: 3))
                .frame(width: width, height: height)
            
            Circle()
                .trim(from: 0.7, to: 1)
                .stroke(LinearGradient(colors: [color1, color2], startPoint: .topTrailing, endPoint: .topLeading), style: StrokeStyle(lineWidth: 3))
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .frame(width: width, height: height)
                .shadow(color: color1.opacity(0.4), radius: 3, x: 2, y: 3)
            
            Text("\(numbers)")
                .font(.body.bold())
            
        }
    }
}

struct LoaderRing_Previews: PreviewProvider {
    static var previews: some View {
        LoaderRing()
    }
}
