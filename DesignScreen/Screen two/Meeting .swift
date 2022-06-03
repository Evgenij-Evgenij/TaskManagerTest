//
//  Meeting .swift
//  DesignScreen
//
//  Created by Евгений Воронов on 24.05.2022.
//

import SwiftUI

struct Meeting: View {
    var body: some View {
        VStack(alignment: .leading) {
            SectionHeaderTwoView(image1: "meeting", title: "Meeting with Metaco Team", with: 35, height: 35, backgroundColor: .gray)
            
            TextCard(text: "@devianjani, @billy, @devin...")
            TextCard(text: "Talk about product design")
        }
        .background(Rectangle().cornerRadius(15).foregroundColor(.white))
        
    }
}

struct Meeting_Previews: PreviewProvider {
    static var previews: some View {
        Meeting()
            
    }
}
