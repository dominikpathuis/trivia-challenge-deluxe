//
//  QuizView.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import SwiftUI

struct QuizView: View {
    let question: TriviaQuestion
    let currentQuestionIndex: Int
    let totalQuestions: Int
    let score: Int
    let streak: Int
    let timeRemaining: Int
    let timerEnabled: Bool
    let selectedAnswer: String?
    let answerSubmitted: Bool
    let earnedBonusPoints: Int
    let theme: TriviaTheme
    let onSubmitAnswer: (String) -> Void
    let onNextQuestion: () -> Void
    let answerBackgroundColor: (String, String) -> Color
    let answerBorderColor: (String, String) -> Color
    let feedbackMessage: (TriviaQuestion) -> String

    @State private var animateCard: Bool = false

    var body: some View {
        VStack(spacing: 18) {
            HStack {
                Label(question.category.rawValue, systemImage: question.category.icon)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text("Score: \(score)")
                    .font(.headline)
                    .foregroundColor(theme.accent)
            }
            .padding(.horizontal)
            .padding(.top, 10)

            HStack {
                Text("Question \(currentQuestionIndex + 1) of \(totalQuestions)")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.75))
                Spacer()
                Text("Streak: \(streak)")
                    .font(.subheadline)
                    .foregroundColor(theme.primary)
            }
            .padding(.horizontal)

            ProgressView(value: Double(currentQuestionIndex + 1), total: Double(totalQuestions))
                .tint(theme.primary)
                .padding(.horizontal)

            if timerEnabled {
                HStack(spacing: 16) {
                    timerCapsule
                    bonusCapsule
                }
                .padding(.horizontal)
            }

            VStack(spacing: 18) {
                Text(question.prompt)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(theme.cardText)
                    .padding(.top, 4)

                ForEach(question.answers.shuffledForDisplay(seed: question.id.uuidString), id: \.self) { answer in
                    Button(action: {
                        onSubmitAnswer(answer)
                    }) {
                        HStack {
                            Text(answer)
                                .foregroundColor(theme.cardText)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(answerBackgroundColor(answer, question.correctAnswer))
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(answerBorderColor(answer, question.correctAnswer), lineWidth: 2)
                        )
                        .cornerRadius(14)
                    }
                    .disabled(answerSubmitted)
                }
            }
            .padding()
            .background(theme.cardBackground)
            .cornerRadius(22)
            .padding(.horizontal)
            .scaleEffect(animateCard ? 1.0 : 0.96)
            .opacity(animateCard ? 1.0 : 0.0)
            .animation(.spring(response: 0.4, dampingFraction: 0.8), value: animateCard)

            if answerSubmitted {
                VStack(spacing: 12) {
                    Text(feedbackMessage(question))
                        .font(.headline)
                        .foregroundColor(selectedAnswer == question.correctAnswer ? .green : .red)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    if timerEnabled && selectedAnswer == question.correctAnswer && earnedBonusPoints > 0 {
                        Text("Speed bonus: +\(earnedBonusPoints)")
                            .font(.subheadline)
                            .foregroundColor(theme.accent)
                    }

                    Button(action: onNextQuestion) {
                        Text(currentQuestionIndex == totalQuestions - 1 ? "See Results" : "Next Question")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                LinearGradient(colors: [theme.primary, theme.secondary], startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(16)
                    }
                    .padding(.horizontal)
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
            }

            Spacer()
        }
        .onAppear {
            runCardAnimation()
        }
        .onChange(of: currentQuestionIndex) { _, _ in
            runCardAnimation()
        }
    }

    private func runCardAnimation() {
        animateCard = false

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
            animateCard = true
        }
    }

    private var timerCapsule: some View {
        HStack {
            Image(systemName: "timer")
            Text("\(timeRemaining)s")
                .fontWeight(.bold)
        }
        .foregroundColor(theme.cardText)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(theme.cardBackground)
        .cornerRadius(20)
    }

    private var bonusCapsule: some View {
        HStack {
            Image(systemName: "bolt.fill")
            Text("Bonus up to +\(timeRemaining)")
                .fontWeight(.bold)
        }
        .foregroundColor(theme.cardText)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(theme.cardBackground)
        .cornerRadius(20)
    }
}

#Preview {
    QuizView(
        question: allQuestions[0],
        currentQuestionIndex: 0,
        totalQuestions: 5,
        score: 10,
        streak: 2,
        timeRemaining: 12,
        timerEnabled: true,
        selectedAnswer: nil,
        answerSubmitted: false,
        earnedBonusPoints: 0,
        theme: TriviaCategory.computerScience.theme,
        onSubmitAnswer: { _ in },
        onNextQuestion: {},
        answerBackgroundColor: { _, _ in Color.white },
        answerBorderColor: { _, _ in Color.clear },
        feedbackMessage: { _ in "Correct!" }
    )
}
