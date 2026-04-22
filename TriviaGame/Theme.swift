//
//  Theme.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import SwiftUI

struct TriviaTheme {
    let gradientColors: [Color]
    let primary: Color
    let secondary: Color
    let accent: Color
    let cardBackground: Color
    let cardText: Color
    let cardSecondaryText: Color
}

extension TriviaCategory {
    var theme: TriviaTheme {
        switch self {
        case .computerScience:
            return TriviaTheme(
                gradientColors: [
                    Color.indigo.opacity(0.40),
                    Color.blue.opacity(0.25),
                    Color.cyan.opacity(0.20)
                ],
                primary: .blue,
                secondary: .indigo,
                accent: .cyan,
                cardBackground: Color.white.opacity(0.72),
                cardText: Color.black.opacity(0.88),
                cardSecondaryText: Color.black.opacity(0.65)
            )

        case .movies:
            return TriviaTheme(
                gradientColors: [
                    Color.red.opacity(0.35),
                    Color.orange.opacity(0.25),
                    Color.yellow.opacity(0.20)
                ],
                primary: .red,
                secondary: .orange,
                accent: .yellow,
                cardBackground: Color.white.opacity(0.72),
                cardText: Color.black.opacity(0.88),
                cardSecondaryText: Color.black.opacity(0.65)
            )

        case .sports:
            return TriviaTheme(
                gradientColors: [
                    Color.green.opacity(0.35),
                    Color.teal.opacity(0.25),
                    Color.mint.opacity(0.20)
                ],
                primary: .green,
                secondary: .teal,
                accent: .mint,
                cardBackground: Color.white.opacity(0.72),
                cardText: Color.black.opacity(0.88),
                cardSecondaryText: Color.black.opacity(0.65)
            )
        }
    }
}
