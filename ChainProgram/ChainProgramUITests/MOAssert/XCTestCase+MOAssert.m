//
//  XCTestCase+MOAssert.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/31.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "XCTestCase+MOAssert.h"

@implementation XCTestCase (MOAssert)



- (XCTestCase *(^)(id, id, NSString *))mo_AssertElement {
    return ^XCTestCase *(id element1, id element2, NSString *failure) {
        XCTAssertEqualObjects(element1, element2, @"%@", failure);
        return self;
    };
}




@end
