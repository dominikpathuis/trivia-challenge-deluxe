//
//  Models.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import Foundation

enum TriviaCategory: String, CaseIterable, Identifiable {
    case computerScience = "Computer Science"
    case movies = "Movies"
    case sports = "Sports"

    var id: String {
        self.rawValue
    }

    var icon: String {
        switch self {
        case .computerScience:
            return "desktopcomputer"
        case .movies:
            return "film.fill"
        case .sports:
            return "sportscourt.fill"
        }
    }
}

enum DifficultyLevel: String, CaseIterable, Identifiable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"

    var id: String {
        self.rawValue
    }

    var timeLimit: Int {
        switch self {
        case .easy:
            return 20
        case .medium:
            return 15
        case .hard:
            return 10
        }
    }
}

struct TriviaQuestion: Identifiable {
    let id = UUID()
    let category: TriviaCategory
    let difficulty: DifficultyLevel
    let prompt: String
    let answers: [String]
    let correctAnswer: String
}

struct MissedQuestion: Identifiable {
    let id = UUID()
    let question: TriviaQuestion
    let selectedAnswer: String
}

enum AppScreen {
    case home
    case quiz
    case results
    case review
    case settings
}
