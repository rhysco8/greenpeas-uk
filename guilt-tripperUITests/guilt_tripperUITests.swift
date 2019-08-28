//
//  guilt_tripperUITests.swift
//  guilt-tripperUITests
//
//  Created by Rachel Griffiths on 07/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import XCTest

var app: XCUIApplication!

class guilt_tripperUITests: XCTestCase {

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
    }

    func testProductWithPalmOil() {
        
        let app = XCUIApplication()
        app.buttons["ENTER"].tap()
        
        let productTextField = app.textFields["Enter product name"]
        let product = "Nutella"
        productTextField.tap()
        productTextField.typeText(product)
        
        app.buttons["SUBMIT"].tap()
        app.buttons["FIND OUT MORE"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).buttons["READ MORE ..."].tap()
        app.buttons["Done"].tap()
        app.buttons["ENTER ANOTHER PRODUCT"].tap()
    }
}
