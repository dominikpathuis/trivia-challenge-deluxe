//
//  ContentView.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = QuizViewModel()

    var body: some View {
        ZStack {
            LinearGradient(
                colors: viewModel.currentTheme.gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            Group {
                switch viewModel.currentScreen {
                case .home:
                    HomeView(
                        highScore: viewModel.highScore,
                        questionCountPerRound: viewModel.questionCountPerRound,
                        selectedCategory: $viewModel.selectedCategory,
                        selectedDifficulty: $viewModel.selectedDifficulty,
                        theme: viewModel.currentTheme,
                        onOpenSettings: viewModel.goToSettings,
                        onStart: viewModel.startGame,
                        timerEnabled: viewModel.timerEnabled
                    )

                case .quiz:
                    QuizView(
                        question: viewModel.activeQuestions[viewModel.currentQuestionIndex],
                        currentQuestionIndex: viewModel.currentQuestionIndex,
                        totalQuestions: viewModel.activeQuestions.count,
                        score: viewModel.score,
                        streak: viewModel.streak,
                        timeRemaining: viewModel.timeRemaining,
                        timerEnabled: viewModel.timerEnabled,
                        selectedAnswer: viewModel.selectedAnswer,
                        answerSubmitted: viewModel.answerSubmitted,
                        earnedBonusPoints: viewModel.earnedBonusPoints,
                        theme: viewModel.currentTheme,
                        onSubmitAnswer: viewModel.submitAnswer,
                        onNextQuestion: viewModel.nextQuestion,
                        answerBackgroundColor: viewModel.answerBackgroundColor,
                        answerBorderColor: viewModel.answerBorderColor,
                        feedbackMessage: viewModel.feedbackMessage
                    )
                    .onAppear {
                        if !viewModel.answerSubmitted && viewModel.timerEnabled {
                            viewModel.startTimer()
                        }
                    }

                case .results:
                    ResultsView(
                        score: viewModel.score,
                        totalQuestions: viewModel.activeQuestions.count,
                        bestStreak: viewModel.bestStreak,
                        missedQuestionCount: viewModel.missedQuestions.count,
                        highScore: viewModel.highScore,
                        resultMessage: viewModel.resultMessage,
                        theme: viewModel.currentTheme,
                        showReviewButton: !viewModel.missedQuestions.isEmpty,
                        onReviewMissed: {
                            withAnimation(.easeInOut) {
                                viewModel.currentScreen = .review
                            }
                        },
                        onPlayAgain: viewModel.resetGame
                    )

                case .review:
                    ReviewView(
                        missedQuestions: viewModel.missedQuestions,
                        theme: viewModel.currentTheme,
                        onBackToHome: viewModel.resetGame
                    )

                case .settings:
                    SettingsView(
                        questionCountPerRound: $viewModel.questionCountPerRound,
                        timerEnabled: $viewModel.timerEnabled,
                        highScore: viewModel.highScore,
                        theme: viewModel.currentTheme,
                        onResetHighScore: viewModel.resetHighScore,
                        onBack: {
                            withAnimation(.easeInOut) {
                                viewModel.currentScreen = .home
                            }
                        }
                    )
                }
            }
            .transition(.opacity.combined(with: .scale))
            .animation(.easeInOut(duration: 0.35), value: viewModel.currentScreen)
        }
        .onDisappear {
            viewModel.stopTimer()
        }
    }
}

#Preview {
    ContentView()
}
