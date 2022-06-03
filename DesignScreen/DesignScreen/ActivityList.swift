//
//  ActivityList.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 18.05.2022.
//

import SwiftUI

struct ActivityList: View {
    var body: some View {
        HStack{
            Text("Activity list")
                .font(.title2.bold())
            Spacer()
            Button {
                print("Press Activity")
            } label: {
                Text("View All")
            }

        }
        .padding()
    }
}

struct ActivityList_Previews: PreviewProvider {
    static var previews: some View {
        ActivityList()
    }
}
