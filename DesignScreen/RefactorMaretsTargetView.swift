//
//  RefactorMaretsTargetView.swift
//  DesignScreen
//
//  Created by Kostiantyn Nevinchanyi on 5/19/22.
//

import SwiftUI

struct RefactorMaretsTargetView: View {
    @State  var tapped = false
    
    var body: some View {
        //NavigationView {
            LazyVStack(alignment: .leading, spacing: 20.0) {
                
                SectionHeaderView(title: "Maret's target",
                                  subtitle: "10 Target")
                
                TextWithCheckmark(text: "Mythical Glory on Land of Dawn")
                
                TextWithCheckmark(text: "Upload 4 Shot & 1 Product on Dribbble")
                
                TextWithCheckmark(text: "Upload 4 Shot & 1 Product on Dribbble")
                
                TextWithCheckmark(text: "Upload 4 Shot & 1 Product on Dribbble")
                
                TextWithCheckmark(text: "Upload 4 Shot & 1 Product on Dribbble")
                
                TextWithCheckmark(text: "Upload 4 Shot & 1 Product on Dribbble")
                
                MainButton(text: "View all",
                           color: .blue) {
                    self.tapped = true
                }
                
                MainButton(text: "View all",
                           color: .green) {
                    print("Press View All")
                }
                
                MainButton(text: "View",
                           color: .blue) {
                    print("Press View All")
                }
               
              
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12.0, style: .continuous)
                    .foregroundColor(.white)
        )
       // }
    }
}

struct RefactorMaretsTargetView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorMaretsTargetView()
            .preferredColorScheme(.dark)
    }
}


struct TextWithCheckmark: View {
    
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName:"checkmark")
                .resizable().frame(width: 18, height: 12)
                .font(.body.bold())
                .foregroundStyle(LinearGradient(colors: [Color.blue, Color.green], startPoint: .leading, endPoint: .trailing))
            
            Text(text)
                .foregroundColor(.black)
                .font(.body)
            
            Spacer()
        }
    }
}


struct MainButton: View {
    
    let text: String
    let color: Color
    let action: (() -> Void)
    
    var body: some View {
        Button {
            action()
        } label: {
            LazyVStack {
                Text(text)
                    .bold()
                    .padding()
            }
            .background(color)
            .foregroundColor(.white)
        }
        .cornerRadius(10)
        .shadow(color: .blue, radius: 8, x: 3, y: 3)
    }
}
