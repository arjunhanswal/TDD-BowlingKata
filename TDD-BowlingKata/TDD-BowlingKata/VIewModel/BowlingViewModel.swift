//
//  BowlingViewModel.swift
//  TDD-BowlingKata
//
//  Created by Arjun on 10/01/24.
//  Copyright © 2024 test. All rights reserved.
//

import Foundation

class BowlingViewModel: ObservableObject {
  @Published private var bowlingModel: BowlingModel
  
  init() {
    bowlingModel = BowlingModel()
  }
  
  func roll(_ pins: Int) {
    bowlingModel.roll(pins)
  }
  
  func calculateScore() -> Int {
    return bowlingModel.score()
  }
}
