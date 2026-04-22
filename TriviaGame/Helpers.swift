//
//  Helpers.swift
//  TriviaGame
//
//  Created by Dominik Pathuis on 4/20/26.
//

import Foundation

extension Array where Element == String {
    func shuffledForDisplay(seed: String) -> [String] {
        var generator = SeededGenerator(seed: seed)
        return self.shuffled(using: &generator)
    }
}

struct SeededGenerator: RandomNumberGenerator {
    private var state: UInt64

    init(seed: String) {
        self.state = UInt64(abs(seed.hashValue))
        if self.state == 0 {
            self.state = 1
        }
    }

    mutating func next() -> UInt64 {
        state = 6364136223846793005 &* state &+ 1
        return state
    }
}
