//
//  BowlingModelTest.swift
//  TDD-BowlingKataTests
//
//  Created by Arjun on 10/01/24.
//  Copyright © 2024 test. All rights reserved.
//

import XCTest
@testable import TDD_BowlingKata

class BowlingModelTest: XCTestCase {
  var bowlingModel: BowlingModel!
  
  override func setUp() {
    bowlingModel = BowlingModel()
  }
  
  override func tearDown() {
    bowlingModel = nil
  }
  
  func testInitialZeroScore() {
    // Arrange
    
    // Act
    rolls(knockPins: 0, times: 20)
    // Assert
    XCTAssertEqual(bowlingModel.score(), 0)
  }

  func testScoringAllTwoPins() {
    // Arrange
    
    // Act
    rolls(knockPins: 2, times: 20)
    // Assert
    XCTAssertEqual(bowlingModel.score(), 40)
  }
  
  func testScoringSpareGame() {
    // Arrange
    
    // Act
    bowlingModel.roll(1)
    bowlingModel.roll(4)
    
    bowlingModel.roll(5)
    bowlingModel.roll(5)
    
    bowlingModel.roll(6)
    bowlingModel.roll(0)
    
    rolls(knockPins: 0, times: 14)
    // Assert
    XCTAssertEqual(bowlingModel.score(), 27)
  }
  
  func testScoringAllFivePins() {
    // Arrange
    
    // Act
    rolls(knockPins: 5, times: 21)
    
    // Assert
    XCTAssertEqual(bowlingModel.score(), 150)
  }
  
  func testScoringWithOneStrike() {
    // Arrange
    
    // Act
    bowlingModel.roll(10)
    bowlingModel.roll(4)
    bowlingModel.roll(5)
    bowlingModel.roll(4)
    
    // Assert
    XCTAssertEqual(bowlingModel.score(), 32)
  }
  
  func testScoringRealGame() {
    // Arrange
    
    // Act
    bowlingModel.roll(1)
    bowlingModel.roll(4)
    bowlingModel.roll(4)
    bowlingModel.roll(5)
    bowlingModel.roll(6)
    bowlingModel.roll(4)
    bowlingModel.roll(5)
    bowlingModel.roll(5)
    bowlingModel.roll(10)
    bowlingModel.roll(0)
    bowlingModel.roll(1)
    bowlingModel.roll(7)
    bowlingModel.roll(3)
    bowlingModel.roll(6)
    bowlingModel.roll(4)
    bowlingModel.roll(10)
    bowlingModel.roll(2)
    bowlingModel.roll(8)
    bowlingModel.roll(6)
    // Assert
    XCTAssertEqual(bowlingModel.score(), 133)
  }
  
  func testPerfectGameScoring() {
    // Arrange
    
    // Act
    rolls(knockPins: 10, times: 12)
    // Assert
    XCTAssertEqual(bowlingModel.score(), 300)
  }
  
}

extension BowlingModelTest {
  private func rolls(knockPins: Int, times: Int) {
    for _ in 1...times {
      bowlingModel.roll(knockPins)
    }
  }
}
