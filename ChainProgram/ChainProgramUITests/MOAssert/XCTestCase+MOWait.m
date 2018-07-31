//
//  XCTestCase+MOWait.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/31.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "XCTestCase+MOWait.h"


@implementation XCTestCase (MOWait)


//
- (XCTestCase *(^)(XCUIElement *))mo_waitForElementToAppear {
    return ^XCTestCase *(XCUIElement *element) {
        [self moc_waitForElementToAppear:element];
        return self;
    };
}




// Private Methods
- (void)moc_waitForElementToAppear: (XCUIElement *)element {
    NSPredicate *existsPredicate = [NSPredicate predicateWithFormat:@"exists == true"];
    [self expectationForPredicate:existsPredicate evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:20 handler:nil];
}










@end








