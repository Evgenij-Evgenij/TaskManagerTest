//
//  ContinueViewTwo.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 23.05.2022.
//

import SwiftUI

struct ContinueViewTwo: View {
    var body: some View {
        VStack{
            SectionHeaderTwoView(image1: "LapTop", title: "Continue Wireframing Nifty", with: 35, height: 35, backgroundColor: .gray)
        }
        .background(Rectangle().cornerRadius(15).foregroundColor(.white))
        
//        VStack{
//            SectionHeaderTwoView(image1: "LapTop", title: "Continue Wireframing Nifty", with: 45, height: 45, backgroundColor: .gray)
//        }
        
    }
}

struct ContinueViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContinueViewTwo()
    }
}
