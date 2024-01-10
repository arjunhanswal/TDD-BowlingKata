//
//  BowlingViewModelTest.swift
//  TDD-BowlingKataTests
//
//  Created by Arjun on 10/01/24.
//  Copyright © 2024 test. All rights reserved.
//

import XCTest
@testable import TDD_BowlingKata

class BowlingViewModelTest: XCTestCase {

  var bowlingViewModel: BowlingViewModel!
  
  override func setUp() {
    bowlingViewModel = BowlingViewModel()
  }
  
  override func tearDown() {
    bowlingViewModel = nil
    super.tearDown()
  }
  
  func testGameScore() {
    // Arrange
    
    // Act
    rolls(knockPins: 0, times: 20)
    // Assert
    XCTAssertEqual(bowlingViewModel.calculateScore(), 0)
  }
  
  func testPerfectGamesc() {
    // Arrange
    
    // Act
    rolls(knockPins: 10, times: 12)
    // Assert
    XCTAssertEqual(bowlingViewModel.calculateScore(), 300)
  }
  
  func testSpareBonusGame() {
    // Arrange
    
    // Act
    bowlingViewModel.roll(7)
    bowlingViewModel.roll(3)
    bowlingViewModel.roll(5)
    // Assert
    XCTAssertEqual(bowlingViewModel.calculateScore(), 20)
  }
  
  func testMixedGame() {
    // Arrange
    
    // Act
    bowlingViewModel.roll(5)
    bowlingViewModel.roll(4)
    bowlingViewModel.roll(10)
    bowlingViewModel.roll(3)
    bowlingViewModel.roll(6)
    bowlingViewModel.roll(7)
    bowlingViewModel.roll(2)
    // Assert
    XCTAssertEqual(bowlingViewModel.calculateScore(), 46)
  }
  
  private func rolls(knockPins: Int, times: Int) {
    for _ in 1...times {
      bowlingViewModel.roll(knockPins)
    }
  }
  
}
