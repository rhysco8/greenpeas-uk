//
//  scannerTests.swift
//  scannerTests
//
//  Created by Student on 07/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import XCTest

@testable import guilt_tripper

var sut: Scanner



class scannerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = Scanner()
        sut.startNew
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
