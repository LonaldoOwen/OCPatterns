//
//  MOUIApplication.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "MOUIApplication.h"



@implementation MOUIApplication



// Button
/**
 Find：find a button by identifier
 */
- (XCUIElement *(^)(NSString *))mo_findButtonById {
    
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *button = app.buttons[@"登录"];
        //return self;  // if return self, button not taped!
        return button;
    };
}

/**
 Find：find a button by index
 */
- (XCUIElement *(^)(NSInteger))mo_findButtonByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *buttons = app.buttons;
        XCUIElement *button = [buttons elementBoundByIndex:index];
        return button;
    };
}


// TextField
- (XCUIElement *(^)(NSString *))mo_findTextFieldByPlaceholder {
    return ^XCUIElement *(NSString *placeholder) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *textFields = app.textFields;
        XCUIElement *textField = textFields[placeholder];
        return textField;
    };
}

- (XCUIElement *(^)(NSString *))mo_findSecureTextFieldByPlaceholder {
    return ^XCUIElement *(NSString *placeholder) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *secureTextFields = app.secureTextFields;
        XCUIElement *secureTextField = secureTextFields[placeholder];
        return secureTextField;
    };
}


// Title
- (XCUIElement *(^)(NSString *))mo_findTitleByIdentifier {
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *navigationBars = app.navigationBars;
        XCUIElement *navigationBar = navigationBars[identifier];
        return navigationBar;
    };
}


@end
