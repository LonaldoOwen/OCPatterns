//
//  MOUIApplication.h
//  ChainProgramUITests
//
//  Created by owen on 2018/7/4.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：封装Element
/// 1、创建XCUIApplication子类，构建find element方法
/// 2、通过创建block类型Property，根据identifier等获取Element；
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


// MARK: - Bar Button Item(NavigationBar)
/**
 *Find：Bar Button Item by index
 */
@property (nonatomic, copy) XCUIElement *(^mo_findNavigationBarButtonByIndex)(NSInteger index);

/**
 *Find：Bar Button Item by identifier
 */
@property (nonatomic, copy) XCUIElement *(^mo_findNavigationBarButtonByIdentifier)(NSString *identifier);


// MARK: - Bar Button Item(ToolBar)
/**
 *Find：Bar Button Item by index
 */
@property (nonatomic, copy) XCUIElement *(^mo_findToolBarButtonByIndex)(NSInteger index);

/**
 *Find：Bar Button Item by identifier
 */
@property (nonatomic, copy) XCUIElement *(^mo_findToolBarButtonByIdentifier)(NSString *identifier);


// MARK: - Cell
/**
 *Find：cell by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findCellByIndex)(NSInteger index);

/**
 *Find：cell by identifier.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findCellByIdentifier)(NSString *identifier);


// MARK: - Pikcer
/**
 *Find：pickerWheel of DatePicker by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findDatePickerWheelByIndex)(NSInteger index);

/**
 *Find：
 */

/**
 *Find：pickerWheel by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findPickerWheelByIndex)(NSInteger index);

/**
 *Find：
 */


// MARK: - SearchBar
/**
 *Find：searchBar by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findSearchBar)(void);


// MARK: - SegmentedControl
/**
 *Find：segmentedControl by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findSegmentedContrlTabByIndex)(NSInteger index);

/**
 *Find：segmentedControl by identifier.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findSegmentedContrlTabByIdentifier)(NSString *);


// MARK: -Switch
/**
 *Find：switch by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findSwitchByIndex)(NSInteger index);


// MARK: - TabBar
/**
 *Find：tabBarButton by index.
 （直接使用buttons获取也可以。）
 */
@property (nonatomic, copy) XCUIElement *(^mo_findTabBarButtonByIndex)(NSInteger index);

/**
 *Find：tabBarButton by indentifier.
 （直接使用buttons获取也可以。）
 */
@property (nonatomic, copy) XCUIElement *(^mo_findTabBarButtonByIdentifier)(NSString *identifier);


// MARK: - TextField
/**
 Find：TextField by placeholder.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findTextFieldByPlaceholder)(NSString *placeholder);

/**
 Find：SecureTextField by placeholder.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findSecureTextFieldByPlaceholder)(NSString *placeholder);


// MARK: - TextView
/**
 *Find：textView by index.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findTextViewByIndex)(NSInteger index);

/**
 *Find：textView by identifier.
 */


// MARK: - Title
/**
 *Find：title by identifier.
 */
@property (nonatomic, copy) XCUIElement *(^mo_findTitleByIdentifier)(NSString *identifier);






// MARK: -
/**
 *Find：
 */

/**
 *Find：
 */






@end
