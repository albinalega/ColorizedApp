//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Альбина Лега on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255).rounded()
    @State private var greenSliderValue = Double.random(in: 0...255).rounded()
    @State private var blueSliderValue = Double.random(in: 0...255).rounded()
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.4, blue: 0.7)
                .ignoresSafeArea()
                .onTapGesture { // вызов этого модификатора происходит автоматически, когда мы тапаем по view (в данном случае view это Color)
                    isInputActive = false
                }
            
            VStack(spacing: 40) {
                ColorView(
                    red: redSliderValue,
                    green: greenSliderValue,
                    blue: blueSliderValue
                )
                
                VStack {
                    ColorSliderView(value: $redSliderValue, color: .red)
                    ColorSliderView(value: $greenSliderValue, color: .green)
                    ColorSliderView(value: $blueSliderValue, color: .blue)
                }
                .frame(height: 150)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
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
