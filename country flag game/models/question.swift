//
//  question.swift
//  country flag game
//
//  Created by stephanie rocha marquez on 1/6/26.
//

import Foundation
struct Answer: Identifiable {
    var id = UUID()
    var tezt: String
    var isCorrect: Bool
}
struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}
