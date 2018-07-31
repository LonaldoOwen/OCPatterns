//
//  XCTestCase+MOAssert.h
//  ChainProgramUITests
//
//  Created by owen on 2018/7/31.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：封装XCTAssert
/// 1、方式：XCTestCase的Category；
/// 2、Chainable Syntax；
///




#import <XCTest/XCTest.h>

@interface XCTestCase (MOAssert)

// MARK: -
/**
 *Assert：
 */
- (XCTestCase *(^)(id, id, NSString *))mo_AssertElement;
- (void)mo_AssertElement: (id)element1 equalTo: (id)element2 failure: (NSString *)fail;





// MARK: -
/**
 *Assert：
 */

/**
 *Assert：
 */

@end
