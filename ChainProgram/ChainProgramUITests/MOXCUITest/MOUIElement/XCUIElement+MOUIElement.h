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


// MARK: - Interacting with Sliders
/**
 Event：normalizedSliderPosition
 Returns the position of the slider's indicator as a normalized value where 0 corresponds to the minimum value of the slider and 1 corresponds to its maximum value.
 */
- (XCUIElement *(^)(void))mo_normalizedSliderPosition;

/**
 Event：- adjustToNormalizedSliderPosition:
 Manipulates the UI to change the displayed value of the slider to a new value, based on a normalized position.
 */
- (XCUIElement *(^)(CGFloat))mo_adjustToNormalizedSliderPosition;




// MARK: - XCUIDevice(Not belong to XCUIElement)
/**
 Event：- pressButton:
 Simulates the user pressing a physical button.
 */
- (XCUIElement *(^)(void))mo_pressHomeButton;


// MARK: - XCUIApplication
/**
 Event：- launch
 Launch the app that current testing.
 */
- (XCUIElement *(^)(void))mo_launch;

/**
 Event：- activate
 Activates the application.
 */
- (XCUIElement *(^)(void))mo_activate;

/**
 Event：- terminate
 Terminates any running instance of the application.
 */
- (XCUIElement *(^)(void))mo_terminate;








// MARK: -
/**
 Event：
 */


@end
