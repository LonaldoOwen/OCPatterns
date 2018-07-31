//
//  MOUIApplication.h
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：创建XCUIApplication子类，构建find element方法
/// 通过创建block类型Property，根据identifier等获取Element；
///

#import <XCTest/XCTest.h>




@interface MOUIApplication : XCUIApplication

// MARK: - Button
/**
 Find：find a button by identifier.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findButtonById)(NSString *identifier);

/**
 Find：find a button by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findButtonByIndex)(NSInteger index);


// MARK: - TextField
/**
 Find：TextField by placeholder.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findTextFieldByPlaceholder)(NSString *placeholder);

/**
 Find：SecureTextField by placeholder.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findSecureTextFieldByPlaceholder)(NSString *placeholder);



@end
