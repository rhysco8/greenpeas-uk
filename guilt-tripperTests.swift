//
//  guilt-tripperTests.swift
//  guilt-tripperTests
//
//  Created by Celia From on 2019-08-09.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import XCTest
@testable import guilt_tripper

class guilt_tripperTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = ViewController()
        sut.viewDidLoad()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }
    
    
}
