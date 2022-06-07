//
//  RefactorHomeViewModel.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 6/7/22.
//

import Foundation


final class RefactorHomeViewModel: ObservableObject {
    // https://github.com/LearnWebCode/json-example/blob/master/animals-1.json

    @Published var todoList: [ToDo] = []
    
    init() {
        downloadAnimals()
    }
    
    func downloadAnimals() {
        let url = "https://jsonplaceholder.typicode.com/todos"
        
        URLSession.shared.dataTask(with: URL(string: url)!) { data, resp, err in
            guard err == nil,
                  let data = data else { return }
            
//            print(String(data: data, encoding: .utf8))
            
            do {
                let todos = try JSONDecoder().decode([ToDo].self, from: data)
                print(todos)
                self.todoList = todos
            } catch {
                print(error.localizedDescription)
            }
            
        }
        .resume()
    }
}


struct ToDo: Decodable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}


