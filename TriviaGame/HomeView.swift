//
//  HomeView.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import SwiftUI

struct HomeView: View {
    let highScore: Int
    let questionCountPerRound: Int
    @Binding var selectedCategory: TriviaCategory
    @Binding var selectedDifficulty: DifficultyLevel
    let theme: TriviaTheme
    let onOpenSettings: () -> Void
    let onStart: () -> Void
    let timerEnabled: Bool

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Spacer(minLength: 20)

                HStack {
                    Spacer()

                    Button(action: onOpenSettings) {
                        Image(systemName: "gearshape.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(12)
                            .background(theme.primary)
                            .clipShape(Circle())
                            .shadow(radius: 4)
                    }
                }
                .padding(.horizontal)

                VStack(spacing: 10) {
                    Image(systemName: "brain.head.profile")
                        .font(.system(size: 54))
                        .foregroundStyle(theme.primary)

                    Text("Trivia Challenge Deluxe")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)

                    Text("Choose your category and difficulty, then race the clock.")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white.opacity(0.75))
                        .padding(.horizontal)
                }

                VStack(spacing: 14) {
                    statCard(title: "High Score", value: "\(highScore)", systemImage: "crown.fill")
                    statCard(title: "Questions Per Round", value: "\(questionCountPerRound)", systemImage: "list.number")
                    timerStatCard(title: "Timer", value: timerEnabled ? "On" : "Off", subtitle: "(change in Settings)", systemImage: "timer")
                }
                .padding(.horizontal)

                VStack(spacing: 18) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Category")
                            .font(.headline)
                            .foregroundColor(theme.cardText)

                        Picker("Category", selection: $selectedCategory) {
                            ForEach(TriviaCategory.allCases) { category in
                                Label(category.rawValue, systemImage: category.icon).tag(category)
                            }
                        }
                        .pickerStyle(.menu)
                        .tint(theme.primary)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.92))
                        .cornerRadius(16)
                    }

                    VStack(alignment: .leading, spacing: 10) {
                        Text("Difficulty")
                            .font(.headline)
                            .foregroundColor(theme.cardText)

                        Picker("Difficulty", selection: $selectedDifficulty) {
                            ForEach(DifficultyLevel.allCases) { difficulty in
                                Text(difficulty.rawValue).tag(difficulty)
                            }
                        }
                        .pickerStyle(.segmented)
                        .tint(theme.primary)
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Mode Preview")
                            .font(.headline)
                            .foregroundColor(theme.cardText)
                        Text("Category: \(selectedCategory.rawValue)")
                            .foregroundColor(theme.cardSecondaryText)
                        Text("Difficulty: \(selectedDifficulty.rawValue)")
                            .foregroundColor(theme.cardSecondaryText)
                        Text("Questions this round: \(questionCountPerRound)")
                            .foregroundColor(theme.cardSecondaryText)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.white.opacity(0.82))
                    .cornerRadius(16)
                }
                .padding()
                .background(theme.cardBackground)
                .cornerRadius(22)
                .padding(.horizontal)

                Button(action: onStart) {
                    HStack {
                        Image(systemName: "play.fill")
                        Text("Start Game")
                            .fontWeight(.semibold)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(colors: [theme.primary, theme.secondary], startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(16)
                    .shadow(radius: 6)
                }
                .padding(.horizontal)

                Spacer(minLength: 20)
            }
            .padding(.vertical)
        }
    }

    private func statCard(title: String, value: String, systemImage: String) -> some View {
        HStack {
            Image(systemName: systemImage)
                .foregroundColor(theme.primary)
                .font(.title2)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(theme.cardSecondaryText)
                Text(value)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(theme.cardText)
            }

            Spacer()
        }
        .padding()
        .background(theme.cardBackground)
        .cornerRadius(16)
    }

    private func timerStatCard(title: String, value: String, subtitle: String, systemImage: String) -> some View {
        HStack {
            Image(systemName: systemImage)
                .foregroundColor(theme.primary)
                .font(.title2)

            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(theme.cardSecondaryText)
                Text(value)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(theme.cardText)
                Text(subtitle)
                    .font(.caption)
                    .foregroundColor(theme.cardSecondaryText)
            }

            Spacer()
        }
        .padding()
        .background(theme.cardBackground)
        .cornerRadius(16)
    }
}

#Preview {
    HomeView(
        highScore: 42,
        questionCountPerRound: 5,
        selectedCategory: .constant(.computerScience),
        selectedDifficulty: .constant(.medium),
        theme: TriviaCategory.computerScience.theme,
        onOpenSettings: {},
        onStart: {},
        timerEnabled: true
    )
}
