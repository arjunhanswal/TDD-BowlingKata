//
//  BowlingModel.swift
//  TDD-BowlingKata
//
//  Created by Arjun on 10/01/24.
//  Copyright © 2024 test. All rights reserved.
//

import Foundation

struct BowlingModel {
  private var scores = Array<Int>(repeating: 0, count: 21)
  private var currentRoll = 0
  
  mutating func roll(_ pin: Int) {
    scores[currentRoll] = pin
    currentRoll += 1
  }
  
  func score() -> Int {
    var roll = 0
    var spareBonus = 0
    var strikeBonus = 0
    
    for _ in 1...9 {
      if isStrike(scores[roll]) {
        strikeBonus += scores[roll + 1] + scores[roll + 2]
        roll += 1
      } else if isSpare(scores[roll], scores[roll + 1]) {
        spareBonus += scores[roll + 2]
        roll += 2
      } else {
        roll += 2
      }
    }
    
    return scores.reduce(0, +) + spareBonus + strikeBonus
  }
  
  private func isSpare(_ firstPin: Int, _ secondPin: Int) -> Bool {
    return firstPin + secondPin == 10
  }
  
  private func isStrike(_ firstPin: Int) -> Bool {
    return firstPin == 10
  }

}
