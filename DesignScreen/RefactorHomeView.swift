//
//  RefactorHomeView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorHomeView: View {
    
    @StateObject var viewModel = RefactorHomeViewModel()
    
    var body: some View {
        NavigationView {
        ScrollView {
            
            VStack(alignment: .center, spacing: 28.0) {
               
                // header
                RefactorHeaderView()
                
                // body
                RefactorCardView()
                RefactorActivityListView()
                
                // JSON DATA
                VStack(alignment: .leading, spacing: 10.0) {
                    ForEach(viewModel.todoList, id: \.id) { todo in
                        Text(todo.title)
                    }
                }

                // JSON DATA
                
                RefactorMaretsTargetView()
                RefactorEvaluationView()
                
                Color.clear
                    .frame(width: 0.0, height: 60.0)
                
            }
            .padding()
            
        }
        .overlay(
            VStack {
                
                Spacer()
                
                RefactorTabBarView()
            }
        )
        .background(Color.gray.opacity(0.1).ignoresSafeArea())
        .navigationBarHidden(true)
        
        }
        
        //.accentColor(Color(.label))
       
        
    }
}

struct RefactorHomeView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorHomeView() 
    }
}


