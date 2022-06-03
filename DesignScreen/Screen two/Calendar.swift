//
//  Calendar.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 20.05.2022.
//

import SwiftUI

struct Calendar: View {
    @State var selectNumb = 0
    var body: some View {
        HStack {
            
            dayWeakAndDate(day: "Mon", data: "21", buttonIndex: 0, color: .gray)
            
            dayWeakAndDate(day: "Tue", data: "22", buttonIndex: 1, color: .gray)
            
            dayWeakAndDate(day: "Wed", data: "23", buttonIndex: 2, color: .gray)
            
            dayWeakAndDate(day: "Thu", data: "24", buttonIndex: 3, color: .gray)
            
            dayWeakAndDate(day: "Fri", data: "25", buttonIndex: 4, color: .gray)
            
            dayWeakAndDate(day: "Sat", data: "26", buttonIndex: 5, color: .black)
            
            dayWeakAndDate(day: "Sun", data: "27", buttonIndex: 6, color: .black)
        }
        .padding()
    }
    
    private func dayWeakAndDate( day: String, data: String, buttonIndex: Int, color: Color) -> some View {
        Button {
            selectNumb = buttonIndex
        } label: {
            LazyVStack(spacing: 15) {
                Text(day)
                Text(data)
            }
            .padding(.vertical, 5)
            .foregroundColor(selectNumb == buttonIndex ? .white : color)
            .background(selectNumb == buttonIndex ? .blue : .clear)
            .cornerRadius(10)
            
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
           .previewInterfaceOrientation(.portrait)
    }
}






//struct CalendarModel: View {
//    var dayWeek: String
//    var number: String
//    var color: Color
//    var action: (() -> Void)
//   @State var selected = 0
//
//    var body: some View {
//        Button {
//            self.selected = selected
//            print(action)
//        } label: {
//            VStack(spacing: 15){
//                Text(dayWeek)
//                Text(number)
//                foregroundColor(self.selected == selected ? .white : .clear)
//                .background(self.selected == selected ? .blue : .clear)
//                .font(.caption)
//            }
////            .foregroundColor(self.selected == selected ? .white : .clear)
////            .background(self.selected == selected ? .blue : .clear)
//            .font(.caption)
//
//        }
//    }
//
//
//}
