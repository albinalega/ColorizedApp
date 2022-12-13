//
//  ColorSliderView.swift
//  ColorizedApp
//
//  Created by Альбина Лега on 13.12.2022.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var value: Double
    @Binding var TFValue: String
    
    var body: some View {
        
        HStack {
            Text("\(lround(value))").foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
            TextField("0.0", text: $TFValue)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60)
        }
    }
}

