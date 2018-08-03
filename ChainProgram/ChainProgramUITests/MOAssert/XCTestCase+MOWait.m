//
//  XCTestCase+MOWait.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/31.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "XCTestCase+MOWait.h"


// 定义异步等待超时时间
static NSTimeInterval _asynchronousTestTimeout = 10;

@implementation XCTestCase (MOWait)

+ (NSTimeInterval)asynchronousTestTimeout {
    return _asynchronousTestTimeout;
}

+ (void)setAsynchronousTestTimeout:(NSTimeInterval)timeout {
    _asynchronousTestTimeout = timeout;
}



// MARK: - Wait

- (XCTestCase *(^)(XCUIElement *))mo_waitForElementToAppear {
    return ^XCTestCase *(XCUIElement *element) {
        // 使用Activity组织log结构
        [XCTContext runActivityNamed:@"waitForElementToAppear" block:^(id<XCTActivity>  _Nonnull activity) {
            [self moc_waitForElementToAppear:element];
        }];
        
        return self;
    };
}

- (XCTestCase *(^)(XCUIElement *, NSTimeInterval))mo_waitForElementToAppearTimeout {
    return ^XCTestCase *(XCUIElement *element, NSTimeInterval timeout) {
        // 使用Activity组织log结构
        [XCTContext runActivityNamed:@"waitForElementToAppearTimeout" block:^(id<XCTActivity>  _Nonnull activity) {
            [self moc_waitForElementToAppear:element TimeOut:timeout];
        }];
        return self;
    };
}




// MARK: - Private Methods

// Before Xcode 8.3
- (void)moc_waitForElementToAppear:(XCUIElement *)element {
    NSPredicate *existsPredicate = [NSPredicate predicateWithFormat:@"exists == true"];
    [self expectationForPredicate:existsPredicate evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:_asynchronousTestTimeout handler:nil];
}

// After Xcode 8.3
- (void)moc_waitForElementToAppear:(XCUIElement *)element TimeOut:(NSTimeInterval)timeout {
    NSPredicate *existsPredicate = [NSPredicate predicateWithFormat:@"exists == true"];
    XCTestExpectation *expectation = [self expectationForPredicate:existsPredicate evaluatedWithObject:element handler:nil];
    XCTWaiterResult result = [XCTWaiter waitForExpectations:@[expectation] timeout:timeout];
    
    switch (result) {
        case XCTWaiterResultCompleted:
            NSLog(@"completed");
            break;
        case XCTWaiterResultTimedOut:
            NSLog(@"timeout");
            // 如果timeout，使测试结果失败
            XCTFail(@"Condition was not satisfied during %f seconds", timeout);
            break;
        case XCTWaiterResultInterrupted:
            NSLog(@"Interrupted");
            break;
        case XCTWaiterResultIncorrectOrder:
            NSLog(@"IncorrectOrder");
            break;
        case XCTWaiterResultInvertedFulfillment:
            NSLog(@"InvertedFulfillment");
            break;
    }
}










@end








