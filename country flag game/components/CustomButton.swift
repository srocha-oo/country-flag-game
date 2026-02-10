//
//  custom button.swift
//  country flag game
//
//  Created by stephanie rocha marquez on 1/16/26.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var background: Color = .yellow
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 10)
         
            
    }
}

#Preview {
    CustomButton(text: "Next")}
