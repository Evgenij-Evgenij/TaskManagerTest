//
//  ScheduleViewModel.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 6/3/22.
//

import Foundation


final class ScheduleViewModel: ObservableObject {
    
    @Published var todayDate = Date()
    
    @Published var dates: [Date] = [] {
        didSet {
            print("## dates:", dates)
        }
    }
    
    
    init() {
        configureWeek()
    }
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        return formatter
        // https://nsdateformatter.com
    }()
    
    func configureWeek() {
        let today = Date()
        var counter = 0
        
        for _ in 0..<7 {
            let date = Calendar.current.date(byAdding: .day, value: counter, to: today)!
            
            dates.append(date)
            counter -= 1
        }
    }
    
    
}
