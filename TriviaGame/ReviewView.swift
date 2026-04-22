//
//  ReviewView.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import SwiftUI

struct ReviewView: View {
    let missedQuestions: [MissedQuestion]
    let theme: TriviaTheme
    let onBackToHome: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            Text("Missed Questions Review")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top)

            ScrollView {
                VStack(spacing: 16) {
                    ForEach(missedQuestions) { item in
                        VStack(alignment: .leading, spacing: 10) {
                            Text(item.question.prompt)
                                .font(.headline)
                                .foregroundColor(theme.cardText)
                            Text("Your answer: \(item.selectedAnswer)")
                                .foregroundColor(.red)
                            Text("Correct answer: \(item.question.correctAnswer)")
                                .foregroundColor(.green)
                            Text("Category: \(item.question.category.rawValue) • Difficulty: \(item.question.difficulty.rawValue)")
                                .font(.caption)
                                .foregroundColor(theme.cardSecondaryText)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(theme.cardBackground)
                        .cornerRadius(16)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }

            Button(action: onBackToHome) {
                Text("Back to Home")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(theme.primary)
                    .cornerRadius(16)
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}

#Preview {
    ReviewView(
        missedQuestions: [
            MissedQuestion(question: allQuestions[0], selectedAnswer: "Wrong Answer")
        ],
        theme: TriviaCategory.sports.theme,
        onBackToHome: {}
    )
}
