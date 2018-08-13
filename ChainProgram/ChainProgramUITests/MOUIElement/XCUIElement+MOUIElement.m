//
//  XCUIElement+MOUIElement.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "XCUIElement+MOUIElement.h"


@implementation XCUIElement (MOUIElement)

// tap
- (XCUIElement *(^)(void))mo_tap {
    return ^XCUIElement *() {
        [self tap];
        return self;
    };
}

// doubleTap
- (XCUIElement *(^)(void))mo_doubleTap {
    return ^XCUIElement *() {
        [self doubleTap];
        return self;
    };
}


// typeText
- (XCUIElement *(^)(NSString *))mo_typeText {
    return ^XCUIElement *(NSString *text) {
        //[self tap];
        [self typeText:text];
        return self;
    };
}


// swipeLeft
- (XCUIElement *(^)(void))mo_swipeLeft {
    return ^XCUIElement *() {
        [self swipeLeft];
        return self;
    };
}

// swipeRight
- (XCUIElement *(^)(void))mo_swipeRight {
    return ^XCUIElement *() {
        [self swipeRight];
        return self;
    };
}

// swipeUp
- (XCUIElement *(^)(void))mo_swipeUp {
    return ^XCUIElement *() {
        [self swipeUp];
        return self;
    };
}

// swipeDown
- (XCUIElement *(^)(void))mo_swipeDown {
    return ^XCUIElement *() {
        [self mo_swipeDown];
        return self;
    };
}


// Picker
// adjust to PickerWheel value.
- (XCUIElement *(^)(NSString *))mo_adjustToPickerWheelValue {
    return ^XCUIElement *(NSString *pickerWheelValue) {
        [self adjustToPickerWheelValue:pickerWheelValue];
        return self;
    };
}


// Slider
// Get slider position
- (XCUIElement *(^)(void))mo_normalizedSliderPosition {
    return ^XCUIElement *() {
        [self normalizedSliderPosition];
        return self;
    };
}

// Ajust slider position
- (XCUIElement *(^)(CGFloat))mo_adjustToNormalizedSliderPosition {
    return ^XCUIElement *(CGFloat normalizedSliderPosition) {
        [self adjustToNormalizedSliderPosition:normalizedSliderPosition];
        return self;
    };
}





/// XCUIDevice

// Home button
- (XCUIElement *(^)(void))mo_pressHomeButton {
    return ^XCUIElement *() {
        XCUIDevice *device = [XCUIDevice sharedDevice];
        [device pressButton:XCUIDeviceButtonHome];
        return self;
    };
}

// Launch
- (XCUIElement *(^)(void))mo_launch {
    return ^XCUIElement *() {
        [[[XCUIApplication alloc] init] launch];
        return self;
    };
}

// Activate
- (XCUIElement *(^)(void))mo_activate {
    return ^XCUIElement *() {
        [[[XCUIApplication alloc] init] activate];
        return self;
    };
}

// Terminate
- (XCUIElement *(^)(void))mo_terminate {
    return ^XCUIElement *() {
        [[[XCUIApplication alloc] init] terminate];
        return self;
    };
}




@end
