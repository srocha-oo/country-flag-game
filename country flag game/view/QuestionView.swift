//
//  QuestionView.swift
//  country flag game
//
//  Created by stephanie rocha marquez on 1/20/26.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Country Flag Game")
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                Text("1 out of 3")
                    .padding()
            }
            .padding(.horizontal)

            ProgressBar(progress: 50)
                .padding(.horizontal)

            VStack(spacing: 10) {
                Text("Which country flag is this?")
                    .font(.title)
                Image("Italy")
                    .resizable()
                    .frame(width: 300, height: 200)
                FlagAnswerRow(answer: Answer(text: "France", isCorrect: false))
                FlagAnswerRow(answer: Answer(text: "Germany", isCorrect: false))
                FlagAnswerRow(answer: Answer(text: "Italy", isCorrect: true))
                FlagAnswerRow(answer: Answer(text: "England", isCorrect: false))
            }

            CustomButton(text: "Next")
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.cyan)
        .navigationBarBackButtonHidden(true)
    }
}
struct FlagAnswerRow: View {
    let answer: Answer

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10 )
                .fill(Color.white)

            Text(answer.text)
                .font(Font.title.bold())
            
        }
        .frame(height: 50)
    }
}

#Preview {
    QuestionView()
}

