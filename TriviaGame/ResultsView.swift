//
//  ResultsView.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import SwiftUI

struct ResultsView: View {
    let score: Int
    let totalQuestions: Int
    let bestStreak: Int
    let missedQuestionCount: Int
    let highScore: Int
    let resultMessage: String
    let theme: TriviaTheme
    let showReviewButton: Bool
    let onReviewMissed: () -> Void
    let onPlayAgain: () -> Void

    var body: some View {
        VStack(spacing: 22) {
            Spacer()

            Image(systemName: score >= totalQuestions - 1 ? "trophy.fill" : "checkmark.seal.fill")
                .font(.system(size: 60))
                .foregroundStyle(score >= totalQuestions - 1 ? .yellow : theme.primary)

            Text("Quiz Complete")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text("Final Score: \(score)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            VStack(spacing: 10) {
                resultsStatRow(label: "Best streak", value: "\(bestStreak)")
                resultsStatRow(label: "Missed questions", value: "\(missedQuestionCount)")
                resultsStatRow(label: "High score", value: "\(highScore)")
            }
            .padding()
            .background(theme.cardBackground)
            .cornerRadius(18)
            .padding(.horizontal)

            Text(resultMessage)
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.horizontal)

            VStack(spacing: 14) {
                if showReviewButton {
                    Button(action: onReviewMissed) {
                        Text("Review Missed Questions")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(theme.secondary)
                            .cornerRadius(16)
                    }
                }

                Button(action: onPlayAgain) {
                    Text("Play Again")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(theme.primary)
                        .cornerRadius(16)
                }
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
    }

    private func resultsStatRow(label: String, value: String) -> some View {
        HStack {
            Text(label)
                .foregroundColor(theme.cardSecondaryText)
            Spacer()
            Text(value)
                .fontWeight(.bold)
                .foregroundColor(theme.cardText)
        }
    }
}

#Preview {
    ResultsView(
        score: 25,
        totalQuestions: 5,
        bestStreak: 3,
        missedQuestionCount: 2,
        highScore: 40,
        resultMessage: "Great job. Strong score and solid streak building.",
        theme: TriviaCategory.movies.theme,
        showReviewButton: true,
        onReviewMissed: {},
        onPlayAgain: {}
    )
}
