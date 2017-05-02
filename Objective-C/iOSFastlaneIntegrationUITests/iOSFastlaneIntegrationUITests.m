//
//  iOSFastlaneIntegrationUITests.m
//  iOSFastlaneIntegrationUITests
//
//  Created by John Lima on 01/05/17.
//  Copyright © 2017 John Lima. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SnapshotHelper.h"

@interface iOSFastlaneIntegrationUITests : XCTestCase

@end

@implementation iOSFastlaneIntegrationUITests

- (void)setUp {
    [super setUp];
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    SnapshotHelper *snap = [[SnapshotHelper alloc] initWithApp:app];
    [app launch];
    [self setContinueAfterFailure:NO];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetScreenshots {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    SnapshotHelper *snap = [[SnapshotHelper alloc] initWithApp:app];
    [app launch];
    
    XCUIElementQuery *cells = app.tables.cells;
    [[cells elementBoundByIndex:0] tap];
    [snap snapshot:@"Home" waitForLoadingIndicator:NO];
}

@end
