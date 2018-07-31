//
//  XCTestCase+MOWait.h
//  ChainProgramUITests
//
//  Created by owen on 2018/7/31.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：实现wait for element系列方法
/// 1、方式：XCTestCase的Category；
/// 2、Chainable Syntax；
///


#import <XCTest/XCTest.h>

@interface XCTestCase (MOWait)

// Chainable method
/**
 * 等待element出现--简便方法
 */
- (XCTestCase *(^)(XCUIElement *))mo_waitForElementToAppear;




/**
 * 等待element出现--简便方法
 * moc means (Mirage Owen Objective-C);mos meas(Mirage Owen Swift)
 * mo_waitForElementToAppear--XCTestCase自带延时执行方法
 */
- (void)moc_waitForElementToAppear: (XCUIElement *)element;

@end
