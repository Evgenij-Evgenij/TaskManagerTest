//
//  SectionHeaderView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct SectionHeaderView: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title3.bold())
                .foregroundColor(.black)
            
            Spacer()
            
            Text(subtitle)
                .foregroundColor(.gray)
        }
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(title: "title", subtitle: "subtitle")
    }
}
