//
//  ViewControllerUITests.swift
//  XCUITestSampleUITests
//
//  Created by Senthil Kumar2 on 03/09/20.
//  Copyright © 2020 Mavenir. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
  
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        let screenshot = XCUIScreen.main.screenshot()
               let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
               fullScreenshotAttachment.lifetime = .keepAlways
               add(fullScreenshotAttachment)
               // Closing the app
               app.terminate()
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testInitial() {
        
        
        let textField = app.textFields["Sample_txtFld"]
        XCTAssertTrue(textField.exists, "Text field doesn't exist")
        XCTAssertEqual(textField.value as! String, "")
        XCTAssertEqual(textField.value as! String, "", "Text field value is not correct")
        
        let loginButton = XCUIApplication().buttons["Next"]
        loginButton.tap()
        XCTAssertTrue(loginButton.exists)
    }

}
