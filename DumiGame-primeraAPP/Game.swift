//
//  Game.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 02/11/2026.
//

import Foundation

struct Game {
    static let minValue = 1
    static let maxValue = 100
    private(set) var target = Int.random(in: Game.minValue...Game.maxValue)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var rounds = 0
    
    mutating func calculatePoints(sliderValue: Double) {
        self.points = 100 - Int(abs(sliderValue.rounded() - Double(target)))
        self.score += self.points
    }
    
    mutating func startNewRound() {
        self.target = Int.random(in: Game.minValue...Game.maxValue)
    }
    
    mutating func restartGame() {
        self.target = Int.random(in: Game.minValue...Game.maxValue)
        self.points = 0
        self.score = 0
        self.rounds = 0
    }
}
