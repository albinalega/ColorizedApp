//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Альбина Лега on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @State private var redSliderTFValue = ""
    @State private var greenSliderTFValue = ""
    @State private var blueSliderTFValue = ""
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Rectangle()
                    .foregroundColor(
                        Color(
                            red: redSliderValue / 255,
                            green: greenSliderValue / 255,
                            blue: blueSliderValue / 255
                        )
                    )
                    .cornerRadius(20)
                    .frame(height: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 4)
                            .foregroundColor(.white)
                    )
                
                VStack {
                    ColorSliderView(value: $redSliderValue, TFValue: $redSliderTFValue)
                        .tint(.red)
                    ColorSliderView(value: $greenSliderValue, TFValue: $greenSliderTFValue)
                        .tint(.green)
                    ColorSliderView(value: $blueSliderValue, TFValue: $blueSliderTFValue)
                        .tint(.blue)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
