//
//  retro_calculatorUITests.swift
//  retro-calculatorUITests
//
//  Created by Yeswanth varma Kanumuri on 3/21/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import XCTest

class retro_calculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCalc() {
        
        let app = XCUIApplication()
        let button = app.buttons["5"]
        button.tap()
        
        app.buttons["add"].tap()
        button.tap()
        
        let equalButton = app.buttons["equal"]
        equalButton.tap()
        
        app.buttons["multiply"].tap()
        app.buttons["3"].tap()
        equalButton.tap()
        
        let subtractButton = app.buttons["subtract"]
        subtractButton.tap()
        
        let button2 = app.buttons["1"]
        button2.tap()
        
        let button3 = app.buttons["0"]
        button3.tap()
        equalButton.tap()
        
        app.buttons["divide"].tap()
        app.buttons["2"].tap()
        equalButton.tap()
        subtractButton.tap()
        button2.tap()
        button3.tap()
        equalButton.tap()
        
    }
    
}
