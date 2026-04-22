//
//  SettingsView.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/21/26.
//

import SwiftUI

struct SettingsView: View {
    @Binding var questionCountPerRound: Int
    @Binding var timerEnabled: Bool
    let highScore: Int
    let theme: TriviaTheme
    let onResetHighScore: () -> Void
    let onBack: () -> Void

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                Button(action: onBack) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                }

                Spacer()

                Text("Settings")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Spacer()

                Color.clear
                    .frame(width: 60, height: 1)
            }
            .padding(.horizontal)
            .padding(.top)

            VStack(spacing: 18) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Questions Per Round")
                        .font(.headline)
                        .foregroundColor(theme.cardText)

                    Picker("Questions Per Round", selection: $questionCountPerRound) {
                        Text("5").tag(5)
                        Text("10").tag(10)
                    }
                    .pickerStyle(.segmented)
                    .tint(theme.primary)
                }

                Toggle(isOn: $timerEnabled) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Enable Timer")
                            .font(.headline)
                            .foregroundColor(theme.cardText)
                        Text("Turn timed gameplay on or off.")
                            .font(.caption)
                            .foregroundColor(theme.cardSecondaryText)
                    }
                }
                .tint(theme.primary)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Current High Score")
                        .font(.headline)
                        .foregroundColor(theme.cardText)
                    Text("\(highScore)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(theme.cardText)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.white.opacity(0.82))
                .cornerRadius(16)

                Button(action: onResetHighScore) {
                    Text("Reset High Score")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(16)
                }
            }
            .padding()
            .background(theme.cardBackground)
            .cornerRadius(22)
            .padding(.horizontal)

            Spacer()
        }
    }
}

#Preview {
    SettingsView(
        questionCountPerRound: .constant(5),
        timerEnabled: .constant(true),
        highScore: 25,
        theme: TriviaCategory.movies.theme,
        onResetHighScore: {},
        onBack: {}
    )
}
