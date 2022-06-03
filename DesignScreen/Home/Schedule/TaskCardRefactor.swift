//
//  TaskCardRefactor.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 6/3/22.
//

import SwiftUI

struct TaskCardRefactor: View {
    
    var icon: String
    var iconColor: Color
    var title: String
    
    var textCards: [String]?
    var backgroundColor: Color? = .white
    
    var body: some View {
        VStack(alignment: .leading) {
             
            
            HStack(alignment: .top) {
                
                Image(icon)
                    .resizable()
                    .padding(5)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .clipShape(Rectangle())
                    .padding(5)
                    .background(iconColor.opacity(0.1), in: Rectangle())
                    .cornerRadius(15)
                
                LazyVStack(alignment: .leading) {
                    Text(title)
                        .bold()
//                        .padding(.leading, 15)
                        .frame(height: 35)
                    
                    if let textCards = textCards {
                        ForEach(textCards, id: \.self) { card in
                            LazyVStack(alignment: .leading) {
                                Text("-" + card)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .padding()
            
                 
            
             
             
//             TextCard(text: "Bring or Bottle of mineral water")
             
             
         }
         //.padding()
         .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
             .foregroundColor(backgroundColor))
     }
 }

struct TaskCardRefactor_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            TaskCardRefactor(icon: "manRunning",
                             iconColor: .gray,
                             title: "Joggin in the Morning",
                             textCards: ["Inviting @synyster & @johny",
                                         "Bring or Bottle of mineral water"])
        }
        .background(Color.black)
    }
}
