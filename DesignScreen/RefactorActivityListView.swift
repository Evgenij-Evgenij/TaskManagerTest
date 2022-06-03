//
//  RefactorActivityListView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorActivityListView: View {
    var body: some View {
        HStack {
            Text("Activity list")
                .font(.title2.bold())
            
            Spacer()
            
            Button {
                print("Press Activity")
            } label: {
                Text("View All")
            }
        }
    }
}

struct RefactorActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorActivityListView()
            
    }
}
