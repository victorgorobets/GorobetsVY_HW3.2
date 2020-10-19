//
//  ColorSettings.swift
//  Gorobets_HW3.2
//
//  Created by VICTOR on 19.10.2020.
//

import SwiftUI

struct ColorSettings: View {
    
    var color: Color
    @Binding var currentValue: Double
    
    @State private var alertTextField = false
    @State private var currentStringValue: String = ""
    
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            
            Text("\(lround(currentValue))")
                .frame(width: 40, alignment: .center)
            
            Slider(value: $currentValue,
                   in: 0...255,
                   onEditingChanged: { _ in currentStringValue = "\(lround(currentValue))" }
            )
            .accentColor(color)
            
            TextField(
                "\(lround(currentValue))",
                text: $currentStringValue,
                onCommit: { checkCorrectValue() }
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 50, alignment: .center)
            .alert(isPresented: $alertTextField, content: {
                Alert(title: Text("Wrong value"), message: Text("Insert value in 0..255"))
            })
            
        }.padding(15)
    }
}

extension ColorSettings {
    
    private func checkCorrectValue() {
        if let getValue = Double(currentStringValue) {
            if (0...255).contains(getValue) {
                currentValue = getValue
                return
            }
        }
        alertTextField = true
        currentStringValue = "\(lround(currentValue))"
    }
}
