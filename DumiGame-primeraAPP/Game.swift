//
//  Game.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 02/11/2026.
//

import Foundation

struct Game {
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    
    mutating func calculatePoints(sliderValue: Double) {
        self.points = 100 - Int(abs(sliderValue - Double(target)))
    }
    
    mutating func startNewGame() {
        self.target = Int.random(in: 1...100)
    }
}
