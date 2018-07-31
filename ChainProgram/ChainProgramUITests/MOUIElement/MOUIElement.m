//
//  MOUIElement.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/1.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "MOUIElement.h"

@implementation MOUIElement

//+ (MOUIElement *)mo_findButtonById: (NSString *)identifier {
//    XCUIApplication *app = XCUIApplication.new;
//    XCUIElementQuery *buttons = app.buttons;
//    MOUIElement *button = (MOUIElement *)buttons[identifier];
//    return button;
//}
//
////
//- (MOUIElement *(^)(NSString *))mo_find {
//    return ^MOUIElement *(NSString *identifier) {
//        XCUIApplication *app = XCUIApplication.new;
//        XCUIElementQuery *buttons = app.buttons;
//        MOUIElement *button = (MOUIElement *)buttons[identifier];
//        //return self;  // if return self, button not taped!
//        return button;
//    };
//}
//
////
//- (MOUIElement *(^)(void))mo_tap {
//    return ^MOUIElement *() {
//        [self tap];
//        return self;
//    };
//}

//
//- (MOUIElement *(^)(void))mo_tap {
//    return ^MOUIElement *() {
//        [self tap];
//        return [MOUIElement init];
//    };
//}





@end
