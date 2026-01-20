//
//  answer row.swift
//  country flag game
//
//  Created by stephanie rocha marquez on 1/16/26.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
        @State private var isSelected = false
        var body: some View {
            HStack(spacing: 20) {
                Image(systemName: "circle.fill")
                    .font(.caption)
                Text(answer.text)
                    .font(.title)
                HStack {
                    if isSelected {
                        Spacer()
                        Image(systemName: answer.isCorrect ? "checkmark.square.fill" : "x.circle.filled")
                            .foregroundColor(answer.isCorrect ? .green : .red)
                    }
                }
                .padding()
                .frame(width: 300, alignment: .leading)
                .background(.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
                .onTapGesture {
                    isSelected = true
                }
            }
        }
    }

#Preview {
    AnswerRow(answer: Answer(text: "Test", isCorrect: true))
}
