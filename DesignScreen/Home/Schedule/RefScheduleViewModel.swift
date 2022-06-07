//
//  RefScheduleViewModel.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 07.06.2022.
//

import Foundation

class RefScheduleViewModel: ObservableObject {
    // Sample Task
//    @Published var storedTask: [Task] = [
//        Task(taskTitle: "Meeting", taskDescription: "Discuss team task for the day", taskData: .init(1641645497)),
//        Task(taskTitle: "Icon set", taskDescription: "", taskData: .init(1641649097))
//    ]
    
    //MARK: Current week days
    @Published var currentWeek: [Date] = []
    
    // MARK: current Day
    @Published var currentDay: Date = Date()
    
    // MARK: Initialization
     
    init () {
        fetchCurrentWeek()
    }
    
    func fetchCurrentWeek(){
        let today =  Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else {
            return
        }
        
        (1...7) .forEach { day in
            if let weekday = calendar.date(byAdding: .day, value: day, to: firstWeekDay) {
                currentWeek.append(weekday)
            }
        }
    }
    
    // MARK: Extraction Date
    
    func extractDate (date: Date, format: String) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    //MARK: Cheking if current Date is today
    
    func istoday(date: Date) -> Bool {
        let calendar = Calendar.current
        
        return calendar.isDate(currentDay, inSameDayAs: date)
    }
}
