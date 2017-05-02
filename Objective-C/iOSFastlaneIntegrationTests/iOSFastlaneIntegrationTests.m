//
//  iOSFastlaneIntegrationTests.m
//  iOSFastlaneIntegrationTests
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Model.h"

@interface iOSFastlaneIntegrationTests : XCTestCase

@end

@implementation iOSFastlaneIntegrationTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetData {
    Model *model = [[Model alloc] init];
    XCTAssert([model getData].count > 0);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    Model *model = [[Model alloc] init];
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        [model getData];
    }];
}

@end
