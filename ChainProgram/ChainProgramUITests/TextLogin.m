//
//  TextLogin.m
//  ChainProgramUITests
//
//  Created by owen on 2018/8/7.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MOUIApplication.h"
#import "XCUIElement+MOUIElement.h"
#import "XCTestCase+MOWait.h"
#import "XCTestCase+MOAssert.h"


@interface TestLogin : XCTestCase

@property (nonatomic, strong)MOUIApplication *mo_app;

@end

@implementation TestLogin

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    
    // 实例化MOUIApplication，全局使用
    self.mo_app = [[MOUIApplication alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testWaitElementToAppear {
    
}


@end
