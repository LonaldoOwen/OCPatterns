//
//  XCUIElement+MOUIElement.h
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：封装UITests的Event
/// 1、使用XCUIElement Category
/// 2、构造Chainable Syntax Event
///


#import <XCTest/XCTest.h>

@interface XCUIElement (MOUIElement)


// MARK: - Tapping and Pressing

//@property (nonatomic, copy) XCUIElement *(^mo_tap)(void);
// 使用返回类型为block的实例方法替换property（分类不支持添加property）
// 所有方法类的，都可以使用这种形式
/**
 Event：tap
 Sends a tap event to a hittable point computed for the element.
 */
- (XCUIElement *(^)(void))mo_tap;

/**
 Event：- doubleTap
 Sends a double tap event to a hittable point computed for the element.
 */
- (XCUIElement *(^)(void))mo_doubleTap;

/**
 Event：- pressForDuration:
 Sends a long press gesture to a hittable point computed for the element, holding for the specified duration.
 */

/**
 Event：- pressForDuration:thenDragToElement:
 Initiates a press-and-hold gesture, then drags to another element.
 */


// MARK: - Typing Text
/**
 Event：typeText
 Types a string into the element.
 */
- (XCUIElement *(^)(NSString *))mo_typeText;


// MARK: - Performing Gestures
/**
 Event：swipeLeft
 Sends a swipe-left gesture.
 */
- (XCUIElement *(^)(void))mo_swipeLeft;

/**
 Event：swipeRight
 Sends a swipe-right gesture.
 */
- (XCUIElement *(^)(void))mo_swipeRight;

/**
 Event：swipeUp
 Sends a swipe-up gesture.
 */
- (XCUIElement *(^)(void))mo_swipeUp;

/**
 Event：swipeDown
 Sends a swipe-down gesture.
 */
- (XCUIElement *(^)(void))mo_swipeDown;

/**
 Event：pinchWithScale:velocity:
 Sends a pinching gesture with two touches.
 */

/**
 Event：rotate:withVelocity:
 Sends a rotation gesture with two touches.
 */


// MARK: - Picker
/**
 Event：- adjustToPickerWheelValue:
 Changes the displayed value for the picker wheel.
 */
- (XCUIElement *(^)(NSString *))mo_adjustToPickerWheelValue;




/**
 Event：
 */


@end
