//
//  ContentView.swift
//  Gorobets_HW3.2
//
//  Created by VICTOR on 19.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentRedValue = 20.0
    @State private var currentGreenValue = 70.0
    @State private var currentBlueValue = 100.0
    
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ResultView(color: UIColor(red: CGFloat(currentRedValue/255),
                                          green: CGFloat(currentGreenValue/255),
                                          blue: CGFloat(currentBlueValue/255),
                                          alpha: 1))
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 40, trailing: 20))
                ColorSettings(color: .red, currentValue: $currentRedValue)
                ColorSettings(color: .green, currentValue: $currentGreenValue)
                ColorSettings(color: .blue, currentValue: $currentBlueValue)
                Spacer()
            }
        }
    }
}
