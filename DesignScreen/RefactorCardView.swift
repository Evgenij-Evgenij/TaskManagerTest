//
//  RefactorCardView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorCardView: View {
    @State var item = false
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Limited Offer")
                .foregroundStyle(LinearGradient(colors: [Color.blue, Color.green], startPoint: .leading, endPoint: .trailing))
            
            LazyVStack(alignment: .leading) {
                Text("Join Vacana Premium and get your unlimited acces!")
                    .foregroundColor(.white)
                    .font(.title3.bold())
            }
            
            
            NavigationLink(destination: ScheduleView(), isActive: $item) {
                Text("Join Now")
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .font(.body.bold())
            }
//            Button {
//                print("press Join now")
//            } label: {
//                Text("Join Now") // приєднатися зараз
//                    .padding()
//                    .background(.white)
//                    .cornerRadius(10)
//                    .foregroundColor(.black)
//                    .font(.body.bold())
//            }
            
        }
        .padding(30)
        .background(
            Image("305e7c1aee")
                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .clipShape(RoundedRectangle(cornerRadius: 12.0, style: .continuous))
                .cornerRadius(15)
        )
    }
}

struct RefactorCardView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorCardView()
    }
}
