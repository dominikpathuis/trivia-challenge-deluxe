//
//  QuizViewModel.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import Foundation
import SwiftUI
import Combine

final class QuizViewModel: ObservableObject {
    @AppStorage("triviaHighScore") var highScore: Int = 0
    @AppStorage("triviaQuestionCount") var questionCountPerRound: Int = 5
    @AppStorage("triviaTimerEnabled") var timerEnabled: Bool = true

    @Published var currentScreen: AppScreen = .home
    @Published var selectedCategory: TriviaCategory = .computerScience
    @Published var selectedDifficulty: DifficultyLevel = .easy
    @Published var activeQuestions: [TriviaQuestion] = []
    @Published var currentQuestionIndex: Int = 0
    @Published var score: Int = 0
    @Published var selectedAnswer: String? = nil
    @Published var answerSubmitted: Bool = false
    @Published var timeRemaining: Int = 20
    @Published var streak: Int = 0
    @Published var bestStreak: Int = 0
    @Published var earnedBonusPoints: Int = 0
    @Published var missedQuestions: [MissedQuestion] = []

    private var timer: Timer? = nil

    deinit {
        stopTimer()
    }

    func startGame() {
        let filteredQuestions = allQuestions.filter {
            $0.category == selectedCategory && $0.difficulty == selectedDifficulty
        }

        activeQuestions = Array(filteredQuestions.shuffled().prefix(questionCountPerRound))
        currentQuestionIndex = 0
        score = 0
        streak = 0
        bestStreak = 0
        earnedBonusPoints = 0
        missedQuestions = []
        selectedAnswer = nil
        answerSubmitted = false

        withAnimation(.easeInOut) {
            currentScreen = .quiz
        }

        prepareTimerForCurrentDifficulty()

        if timerEnabled {
            startTimer()
        }
    }

    func prepareTimerForCurrentDifficulty() {
        timeRemaining = selectedDifficulty.timeLimit
    }

    func startTimer() {
        guard timerEnabled else {
            stopTimer()
            return
        }

        stopTimer()
        timeRemaining = selectedDifficulty.timeLimit

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            guard let self else {
                return
            }

            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                self.handleTimeExpired()
            }
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    func handleTimeExpired() {
        stopTimer()

        guard !answerSubmitted, !activeQuestions.isEmpty else {
            return
        }

        let currentQuestion = activeQuestions[currentQuestionIndex]
        selectedAnswer = "No answer"
        answerSubmitted = true
        streak = 0
        earnedBonusPoints = 0
        missedQuestions.append(MissedQuestion(question: currentQuestion, selectedAnswer: "No answer"))

        HapticsManager.warning()
    }

    func submitAnswer(_ answer: String) {
        guard !answerSubmitted, !activeQuestions.isEmpty else {
            return
        }

        stopTimer()
        selectedAnswer = answer
        answerSubmitted = true

        let currentQuestion = activeQuestions[currentQuestionIndex]

        if answer == currentQuestion.correctAnswer {
            streak += 1
            bestStreak = max(bestStreak, streak)

            if timerEnabled {
                earnedBonusPoints = timeRemaining
                score += 1 + earnedBonusPoints
            } else {
                earnedBonusPoints = 0
                score += 1
            }

            HapticsManager.success()
        } else {
            streak = 0
            earnedBonusPoints = 0
            missedQuestions.append(MissedQuestion(question: currentQuestion, selectedAnswer: answer))

            HapticsManager.error()
        }

        if score > highScore {
            highScore = score
        }
    }

    func nextQuestion() {
        HapticsManager.mediumImpact()

        if currentQuestionIndex < activeQuestions.count - 1 {
            currentQuestionIndex += 1
            selectedAnswer = nil
            answerSubmitted = false
            earnedBonusPoints = 0
            prepareTimerForCurrentDifficulty()

            if timerEnabled {
                startTimer()
            }
        } else {
            stopTimer()

            if score > highScore {
                highScore = score
            }

            withAnimation(.easeInOut) {
                currentScreen = .results
            }
        }
    }

    func resetGame() {
        stopTimer()
        currentQuestionIndex = 0
        score = 0
        streak = 0
        bestStreak = 0
        selectedAnswer = nil
        answerSubmitted = false
        earnedBonusPoints = 0
        missedQuestions = []
        activeQuestions = []

        withAnimation(.easeInOut) {
            currentScreen = .home
        }
    }

    func goToSettings() {
        withAnimation(.easeInOut) {
            currentScreen = .settings
        }
    }

    func resetHighScore() {
        highScore = 0
    }

    func answerBackgroundColor(for answer: String, correctAnswer: String) -> Color {
        if !answerSubmitted {
            return Color.white.opacity(0.92)
        }

        if answer == correctAnswer {
            return Color.green.opacity(0.30)
        }

        if answer == selectedAnswer {
            return Color.red.opacity(0.30)
        }

        return Color.white.opacity(0.90)
    }

    func answerBorderColor(for answer: String, correctAnswer: String) -> Color {
        if !answerSubmitted {
            return Color.clear
        }

        if answer == correctAnswer {
            return Color.green
        }

        if answer == selectedAnswer {
            return Color.red
        }

        return Color.clear
    }

    func feedbackMessage(for question: TriviaQuestion) -> String {
        if selectedAnswer == question.correctAnswer {
            return "Correct! Nice work."
        }

        if selectedAnswer == "No answer" {
            return "Time expired. The correct answer was \(question.correctAnswer)."
        }

        return "Incorrect. The correct answer was \(question.correctAnswer)."
    }

    var resultMessage: String {
        if score >= 70 {
            return "Amazing round. You crushed it with speed and accuracy."
        } else if score >= 40 {
            return "Great job. Strong score and solid streak building."
        } else if score >= 15 {
            return "Nice work. You are getting the hang of it."
        } else {
            return "Good start. Try another round and go for a bigger streak."
        }
    }

    var currentTheme: TriviaTheme {
        selectedCategory.theme
    }
}
