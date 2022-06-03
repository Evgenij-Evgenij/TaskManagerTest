//
//  DividerView.swift
//  DesignScreen
//
//  Created by Евгений Воронов on 21.05.2022.
//

import SwiftUI

struct CustomDividerView: View {
    var body: some View {
    HStack {
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(LinearGradient(colors: [Color.gray.opacity(0.1), Color.blue.opacity(0.5), Color.gray.opacity(0.1)], startPoint: .leading, endPoint: .trailing))
               
            
        }
    .padding()
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDividerView()
    }
}

//width: UIScreen.main.bounds.width  - 50
//Если надо будет чуть покороче сделать воспользуйся этим
