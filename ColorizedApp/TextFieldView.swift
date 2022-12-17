//
//  TextFieldView.swift
//  ColorizedApp
//
//  Created by Альбина Лега on 17.12.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    @Binding var value: Double
    
    var action: () -> Void
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation { // слайдер не телепортируется а плавно перемещается
                action()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing) // чтобы разместить текст справа
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad) // чтобы выводить цифровую клавиатуру
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextFieldView(text: .constant("128"), value: .constant(128.0), action: {})
        }
    }
}
