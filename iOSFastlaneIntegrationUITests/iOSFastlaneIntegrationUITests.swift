//
//  iOSFastlaneIntegrationUITests.swift
//  iOSFastlaneIntegrationUITests
//
//  Created by John Lima on 30/04/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

import XCTest

class iOSFastlaneIntegrationUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        continueAfterFailure = false
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetScreenshots() {
    
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        snapshot("Home")
        app.tables.cells.element(boundBy: 0).tap()
    }
}
