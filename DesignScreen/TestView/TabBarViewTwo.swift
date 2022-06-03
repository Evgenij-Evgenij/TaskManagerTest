//
//  TabBarViewTwo.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 30.05.2022.
//

import SwiftUI

struct TabBarViewTwo: View {
    var body: some View {
        VStack{
            Button {
                print("tab")
            } label: {
                HStack{
                    Image(systemName: "plus")
                    Text("Add ...")
                }
            }

        }
    }
}

struct TabBarViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewTwo()
    }
}
