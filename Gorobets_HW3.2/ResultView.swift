//
//  ResultView.swift
//  Gorobets_HW3.2
//
//  Created by VICTOR on 19.10.2020.
//

import SwiftUI

struct ResultView: View {
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .overlay(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.white, lineWidth: 6))
    }
}
struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(color: .red)
    }
}
