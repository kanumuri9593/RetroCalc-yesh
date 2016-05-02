//
//  retro_calculatorTests.swift
//  retro-calculatorTests
//
//  Created by Yeswanth varma Kanumuri on 3/18/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import XCTest

class retro_calculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testAudioService() {
        XCTAssertNotNil(audioService.instance)
        XCTAssertNotNil(audioService.instance.pathForResorce("btn", fileType: "wav"))
        XCTAssertNotNil(audioService.instance.butnUrl)
        XCTAssertNil(audioService.instance.createPlayerwithUrl(NSURL(string: "")!))
        XCTAssertNotNil(audioService.instance.createPlayerwithUrl(audioService.instance.butnUrl!))
        
        XCTAssertNil(audioService.instance.SoundFXPlayer)
        XCTAssertFalse(audioService.instance.playSoundFX())
        audioService.instance.SoundFXPlayer = audioService.instance.createPlayerwithUrl(audioService.instance.butnUrl!)
         XCTAssertNotNil(audioService.instance.SoundFXPlayer)
        XCTAssertTrue(audioService.instance.playSoundFX())
        
    }
    
    func testCalcService () {
    
    XCTAssertNotNil(calcService.instance)
        XCTAssertEqual(calcService.Operation.Add.rawValue, "+", "addition is going wrong")
    XCTAssertEqual(calcService.Operation.Subtract.rawValue, "-", "subtract is going wrong")
        XCTAssertEqual(calcService.Operation.Multiply.rawValue, "*", "multiply is going wrong")
        XCTAssertEqual(calcService.Operation.Divide.rawValue, "/", "divide is going wrong")
        XCTAssertEqual(calcService.Operation.Empty.rawValue, "Empty", "addition is going wrong")
    XCTAssertNil(calcService.instance.MultiplicationValue("cc", numstrB: "12"))
        XCTAssertNotNil(calcService.instance.AdditionValue("1", numstrB: "2"))
        XCTAssertEqual(calcService.instance.SubtractionValue("4", numstrB: "2"), "2.0")
        XCTAssertNotEqual(calcService.instance.DivisionValue("10", numstrB: "5"), "50.0")
    
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
