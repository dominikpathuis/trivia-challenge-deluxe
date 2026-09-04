# Trivia Challenge Deluxe

A SwiftUI trivia quiz game for iOS. Pick a category and difficulty, race the clock, and try to beat your high score.

## Features

- **Three categories** — Computer Science, Movies, and Sports, each with its own color theme
- **Three difficulty levels** — Easy, Medium, and Hard, each with a different time limit per question (20s / 15s / 10s)
- **Optional timer mode** — toggle timed gameplay on or off in Settings
- **Speed bonus scoring** — answering correctly with time remaining awards bonus points on top of the base point
- **Streak tracking** — tracks your current streak and best streak for the round
- **Missed question review** — after a round, review every question you got wrong (or ran out of time on) alongside the correct answer
- **Persistent high score** — stored locally and can be reset from Settings
- **Configurable round length** — choose 5 or 10 questions per round
- **Haptic feedback** — success, error, and warning haptics reinforce game events (correct answer, wrong answer, time running out)

## How it works

1. **Home** — pick a category and difficulty, see your current high score and settings at a glance, then start the game.
2. **Quiz** — answer multiple-choice questions one at a time. If the timer is on, a countdown and a "bonus up to" indicator show how many points are on the line. Answers are shuffled per-question using a seeded shuffle so the order stays stable for a given question.
3. **Results** — see your final score, best streak, and how many questions you missed, with a short summary message based on performance.
4. **Review** (optional) — if you missed any questions, review them along with the correct answers before heading back home.
5. **Settings** — adjust questions per round, toggle the timer, view or reset your high score.

## Project structure

```
TriviaGame/
├── TriviaGameApp.swift      # App entry point
├── ContentView.swift        # Root view; routes between screens based on QuizViewModel state
├── QuizViewModel.swift      # Game state, scoring, timer, and navigation logic (ObservableObject)
├── Models.swift             # TriviaCategory, DifficultyLevel, TriviaQuestion, MissedQuestion, AppScreen
├── QuestionData.swift       # Static question bank
├── Theme.swift              # Per-category color theme definitions
├── Helpers.swift            # Seeded shuffle for stable answer ordering
├── HapticsManager.swift     # Wraps UIKit haptic feedback generators
├── HomeView.swift           # Category/difficulty selection and stats
├── QuizView.swift           # Active question screen
├── ResultsView.swift        # End-of-round summary
├── ReviewView.swift         # Missed question review
└── SettingsView.swift       # Round length, timer toggle, high score reset
```

## Requirements

- Xcode
- iOS (SwiftUI)

## Getting started

1. Clone the repo
2. Open `TriviaGame.xcodeproj` in Xcode
3. Build and run on a simulator or device

## Scoring

- Each correct answer earns at least 1 point.
- With the timer enabled, correct answers also earn bonus points equal to the seconds remaining when you answered.
- An incorrect answer or a timeout resets your current streak to 0 and adds the question to the missed-questions list for review.
