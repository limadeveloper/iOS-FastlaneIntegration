//
//  iOSFastlaneIntegrationTests.swift
//  iOSFastlaneIntegrationTests
//
//  Created by John Lima on 30/04/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

import XCTest
@testable import iOSFastlaneIntegration

class iOSFastlaneIntegrationTests: XCTestCase {
    
    fileprivate let model = Model()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetData() {
        XCTAssert(model.getData().count > 0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            let _ = self.model.getData()
        }
    }
}
