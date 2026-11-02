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
    
    mutating func calculatePoints(sliderValue: Double) {
        self.points = 100 - Int(abs(sliderValue.rounded() - Double(target)))
    }
    
    mutating func startNewGame() {
        self.target = Int.random(in: Game.minValue...Game.maxValue)
    }
}
