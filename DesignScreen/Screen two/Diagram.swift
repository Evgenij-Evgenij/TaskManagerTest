//
//  Diagram.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 27.05.2022.
//

import SwiftUI

struct Diagram: View {
    var body: some View {
        VStack{
            SectionHeaderTwoView(image1: "diagram", title: "Traiding with us", with: 35, height: 35, backgroundColor: .gray)
        }
        .background(Rectangle().cornerRadius(15).foregroundColor(.white))
    }
}

struct Diagram_Previews: PreviewProvider {
    static var previews: some View {
        Diagram()
    }
}
