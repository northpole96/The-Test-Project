//
//  HexColorView.swift
//  The Test Project
//
//  Created by Rajesh Khuntia on 05/09/23.
//

import SwiftUI

extension Color {
    init(hex: UInt32, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}


struct HexColorView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(hex: 0xffc300, alpha: 1.0))
            .font(.largeTitle)
            .fontWeight(.black)
        
    }
}

#Preview {
    HexColorView()
}
