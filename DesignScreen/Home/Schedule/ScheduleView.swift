//
//  ScheduleView.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 20.05.2022.
//

import SwiftUI

struct ScheduleView: View {
    @StateObject var taskModel = RefScheduleViewModel()
    @Namespace var animation
    //@StateObject var viewModel = ScheduleViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack {
            // header
            HStack {
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title)
                }
                
                Spacer()
                
                Text("February")
                
                Spacer()
                
                Button {
                    print("Press Calendar")
                } label: {
                    Image(systemName: "calendar")
                }
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(taskModel.currentWeek, id: \.self) {day in
                        VStack(spacing: 10) {
                            //EEE will return day as MON, TUE
                            Text(taskModel.extractDate(date: day, format: "EEE"))
                            
                            Text(taskModel.extractDate(date: day, format: "dd"))
//                                    Circle()
//                                        .fill(.white)
//                                        .frame(width: 8, height: 8)
//                                        .opacity(taskModel.istoday(date: day) ? 1 : 0)
                        }
                        .foregroundColor(taskModel.istoday(date: day) ? .white : .black)
                        // MARK: capsule Shape
                        .frame(width: 45, height: 90)
                        .background(
                            
                            ZStack{
                               // MARK: Matched geometry effect
                                if taskModel.istoday(date: day) {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.blue)
                                        .matchedGeometryEffect(id: "CURRDay", in: animation)
                                }
                            })
                        .contentShape(Capsule())
                        .onTapGesture {
                            // Updating current day
                            withAnimation {
                                taskModel.currentDay = day
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            // body
            ScrollView {
                VStack {
                    
//                    HStack {
//                        ForEach(viewModel.dates
//                            .sorted(by: { $0 < $1 }),
//                                id: \.self) { date in
//                            Text(viewModel.dateFormatter.string(from: date))
//                        }
//                    }
                    
                    
                    
                    CustomDividerView()
                        //.navigationBarTitleDisplayMode(.inline)
                    HStack {
                        VStack(spacing: 20) {
                            //-------
                            TaskCardRefactor(
                                icon: "manRunning",
                                iconColor: .gray,
                                title: "Joggin in the Morning",
                                textCards: ["Inviting @synyster & @johny",
                                            "Bring or Bottle of mineral water", "exmpl", "2"]
                            )
//                            JogginMorning()
                            TaskCardRefactor(
                                icon: "",
                                iconColor: .blue,
                                title: "",
                                backgroundColor: .blue
                            )
                            Reading()
                            ContinueViewTwo()
                            Meeting()
                            ContinueWork()
                            Diagram()
                        }
                        Clock()
                            .padding()
                    }
                    .padding()
                    Color.clear.frame(height: 60)
                }
            }
            
        }
        
        .overlay(
            VStack{
            Spacer()
            TabBarTwo()
        })
        .background(.gray.opacity(0.2))
        .navigationBarHidden(true)
//        .navigationTitle(Text("February"))
//        .toolbar(content: {
//            Button {
//                print("Press Calendar")
//            } label: {
//                Image(systemName: "calendar")
//            }
//
//        })
//        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct HomeScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScheduleView()
        }
    }
}


