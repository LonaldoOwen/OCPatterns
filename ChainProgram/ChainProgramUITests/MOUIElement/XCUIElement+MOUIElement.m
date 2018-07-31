//
//  XCUIElement+MOUIElement.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "XCUIElement+MOUIElement.h"

@implementation XCUIElement (MOUIElement)

//
- (XCUIElement *(^)(void))mo_tap {
    return ^XCUIElement *() {
        [self tap];
        return self;
    };
}

@end
