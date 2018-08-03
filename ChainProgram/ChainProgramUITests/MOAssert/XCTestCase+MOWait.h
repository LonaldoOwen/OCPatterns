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
/// 3、
///


#import <XCTest/XCTest.h>

@interface XCTestCase (MOWait)

// 获取和设置异步超时时间
+ (NSTimeInterval)asynchronousTestTimeout;
+ (void)setAsynchronousTestTimeout:(NSTimeInterval)timeout;





// Chainable method
/**
 * 等待element出现--简便方法；
 * Block中可传入一个参数(XCUIElement *)element：元素；
 * 实例：mo_waitForElementToAppear(element);
 */
- (XCTestCase *(^)(XCUIElement *))mo_waitForElementToAppear;

/**
 * 等待element出现--简便方法，通过XCTWaiter实现;
 * Xcode8.4新增方法；
 * Block中可传入两个参数，(XCUIElement *)element：元素，(NSTimeInterval)timeout;
 * 实例：mo_waitForElementToAppearTimeout(element, timeout);
 */
- (XCTestCase *(^)(XCUIElement *, NSTimeInterval))mo_waitForElementToAppearTimeout;


/**
 * 等待element出现--简便方法
 * moc means (Mirage Owen Objective-C);mos meas(Mirage Owen Swift)
 * moc_waitForElementToAppear--XCTestCase自带延时执行方法
 */
- (void)moc_waitForElementToAppear: (XCUIElement *)element;

@end
