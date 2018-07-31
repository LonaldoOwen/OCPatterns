//
//  XCUIElement+MOUIElement.h
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：使用XCUIElement Category构造Chainable Syntax Event
/// 
///

#import <XCTest/XCTest.h>

@interface XCUIElement (MOUIElement)


//@property (nonatomic, copy) XCUIElement *(^mo_tap)(void);
// 使用返回类型为block的实例方法替换property（分类不支持添加property）
// 所有方法类的，都可以使用这种形式
/**
 Event：tap
 */
- (XCUIElement *(^)(void))mo_tap;

/**
 Event：
 */

/**
 Event：
 */


@end
