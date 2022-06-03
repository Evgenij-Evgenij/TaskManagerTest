//
//  ContinueWork.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 25.05.2022.
//

import SwiftUI

struct ContinueWork: View {
    var body: some View {
        VStack{
            SectionHeaderTwoView(image1: "LapTop", title: "Continue work with Nifty", with: 35, height: 35, backgroundColor: .gray)
        }
        .background(Rectangle().cornerRadius(15).foregroundColor(.white))
    }
}

struct ContinueWork_Previews: PreviewProvider {
    static var previews: some View {
        ContinueWork()
    }
}
