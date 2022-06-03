//
//  Reading.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 23.05.2022.
//

import SwiftUI

struct Reading: View {
    var body: some View {
        LazyVStack {
            SectionHeaderTwoView(image1: "books", title: "Reading a thousand brains", with: 35, height: 35, backgroundColor: .white)
                .foregroundColor(.white)
        }
        //.padding()
//    .padding(.vertical)
        .background(Rectangle().cornerRadius(15).foregroundColor(.blue))
    }
}

struct Reading_Previews: PreviewProvider {
    static var previews: some View {
        Reading()
    }
}
