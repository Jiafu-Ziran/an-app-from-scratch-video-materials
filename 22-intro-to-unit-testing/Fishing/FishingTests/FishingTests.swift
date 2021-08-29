//
//  FishingTests.swift
//  FishingTests
//
//  Created by Zzr on 2021/8/25.
//

import XCTest
@testable import Fishing

class FishingTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExample() throws {
        XCTAssertEqual(game.points(sliderValue: 50), 999)
    }

}
