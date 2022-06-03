//
//  RefactorEvaluationView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorEvaluationView: View {
    var body: some View {
        
        VStack {
            SectionHeaderView(title: "Evalaution",
                              subtitle: "January, 20")
            
            HStack(spacing: 0.0) {
                
                LazyVStack(alignment: .leading) {
                    HStack {
                        
                        LoaderRing()
                        
                        Text("Completed\nActivities")
                            .font(.subheadline.bold())
                            .foregroundColor(.black)
                    }
                }
                
                LazyVStack(alignment: .leading) {
                    
                    HStack {
                        LoaderRing(color1: Color.green, color2: .green.opacity(0.7), numbers: 6)
                        
                        Text("Pending\nActivities")
                            .font(.subheadline.bold())
                            .foregroundColor(.black)
                    }
                    
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                .foregroundColor(.white)
        )
    }
}

struct RefactorEvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorEvaluationView()
    }
}
