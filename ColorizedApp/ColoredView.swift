//
//  ColoredView.swift
//  ColorizedApp
//
//  Created by Альбина Лега on 13.12.2022.
//

import SwiftUI

struct ColoredView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(
                Color(
                red: 100 / 255,
                green: 90 / 255,
                blue: 162 / 255
                )
            )
            .cornerRadius(20)
            .frame(height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 4)
                .foregroundColor(.white)
            )
    }
}



struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView()
    }
}
