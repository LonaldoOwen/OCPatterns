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


// Bar Button Item(NavigationBar)
- (XCUIElement *(^)(NSInteger))mo_findNavigationBarButtonByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *navigationBar = app.navigationBars.firstMatch;
        XCUIElement *button = [navigationBar.buttons elementBoundByIndex:index];
        return button;
    };
}

- (XCUIElement *(^)(NSString *))mo_findNavigationBarButtonByIdentifier {
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *button = app.navigationBars.buttons[identifier].firstMatch;
        return button;
    };
}


// Bar Button Item(ToolBar)
- (XCUIElement *(^)(NSInteger))mo_findToolBarButtonByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *toolBar = app.toolbars.firstMatch;
        XCUIElement *button = [toolBar.buttons elementBoundByIndex:index];
        return button;
    };
}

- (XCUIElement *(^)(NSString *))mo_findToolBarButtonByIdentifier {
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *button = app.toolbars.buttons[identifier].firstMatch;
        return button;
    };
}


// Cell
- (XCUIElement *(^)(NSInteger))mo_findCellByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        // 注意：目前的版本，cell如果未在屏幕内，会自动滚动找到cell；
        XCUIElementQuery *cells = app.cells;
        XCUIElement *cell = [cells elementBoundByIndex:index];
        return cell;
    };
}

// 通过cell上的staticText的identifier定位cell
- (XCUIElement *(^)(NSString *))mo_findCellByIdentifier {
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        // 注意：目前的版本，cell如果未在屏幕内，会自动滚动找到cell；
        XCUIElementQuery *cells = app.cells;
        // 定位staticText
        XCUIElementQuery *staticTexts = cells.staticTexts;
        XCUIElement *staticText = [staticTexts elementMatchingType:XCUIElementTypeStaticText identifier:identifier];
        return staticText;
    };
}


// DatePikcer
- (XCUIElement *(^)(NSInteger))mo_findDatePickerWheelByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *datePikcers = app.datePickers;
        XCUIElement *datePicker = [datePikcers firstMatch];
        XCUIElementQuery *pickerWheels = datePicker.pickerWheels;
        XCUIElement *pickerWheel = [pickerWheels elementBoundByIndex:index];
        return pickerWheel;
    };
}

// Picker
- (XCUIElement *(^)(NSInteger))mo_findPickerWheelByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *pikcers = app.pickers;
        XCUIElement *picker = [pikcers firstMatch];
        XCUIElementQuery *pickerWheels = picker.pickerWheels;
        XCUIElement *pickerWheel = [pickerWheels elementBoundByIndex:index];
        return pickerWheel;
    };
}


// SearchBar
- (XCUIElement *(^)(void))mo_findSearchBar {
    return ^XCUIElement *() {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *searchBars = app.searchFields;
        XCUIElement *searchBar = searchBars.firstMatch;
        
        return searchBar;
    };
}


// SegmentedControl
- (XCUIElement *(^)(NSInteger))mo_findSegmentedContrlTabByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *segmentedControls = app.segmentedControls;
        XCUIElement *segmentedControl = [segmentedControls firstMatch];
        // 获取button
        XCUIElementQuery *buttons = segmentedControl.buttons;
        XCUIElement *button = [buttons elementBoundByIndex:index];
        return button;
    };
}

- (XCUIElement *(^)(NSString *))mo_findSegmentedContrlTabByIdentifier {
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        // 可以看看这个写法的效率
        XCUIElement *button = app.segmentedControls.buttons[identifier].firstMatch;
        return button;
    };
}


// Switch
- (XCUIElement *(^)(NSInteger))mo_findSwitchByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *switchElement = [app.switches elementBoundByIndex:index];
        return switchElement;
    };
}


// TabBar
- (XCUIElement *(^)(NSInteger))mo_findTabBarButtonByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *tabBars = app.tabBars;
        XCUIElement *tabBar = [tabBars firstMatch];
        XCUIElementQuery *buttons = tabBar.buttons;
        XCUIElement *button = [buttons elementBoundByIndex:index];
        return button;
    };
}

// 定位tabBar上的button
- (XCUIElement *(^)(NSString *))mo_findTabBarButtonByIdentifier {
    return ^XCUIElement *(NSString *identifier) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElementQuery *tabBars = app.tabBars;
        XCUIElement *tabBar = [tabBars firstMatch];
        // 定位tabBar上的button
        XCUIElementQuery *buttons = tabBar.buttons;
        XCUIElement *button = [buttons elementMatchingType:XCUIElementTypeButton identifier:identifier];
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


// TextView
- (XCUIElement *(^)(NSInteger))mo_findTextViewByIndex {
    return ^XCUIElement *(NSInteger index) {
        MOUIApplication *app = MOUIApplication.new;
        XCUIElement *textView = [app.textViews elementBoundByIndex:index];
        return textView;
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
