//
//  ChainProgramUITests.m
//  ChainProgramUITests
//
//  Created by owen on 2018/7/1.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MOUIApplication.h"
#import "XCUIElement+MOUIElement.h"
#import "XCTestCase+MOWait.h"
#import "XCTestCase+MOAssert.h"



@interface ChainProgramUITests : XCTestCase

@property (nonatomic, strong)MOUIApplication *mo_app;

@end

@implementation ChainProgramUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    
    
    // 设置默认异步超时时间
    [XCTestCase setAsynchronousTestTimeout:20];
    
    // 实例化MOUIApplication，全局使用
    self.mo_app = [[MOUIApplication alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testLogin {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElementQuery *buttons = app.buttons;
    XCUIElement *button = [buttons elementBoundByIndex:0];
    
    [button tap];
    
    // 获取VC title元素的方法
    NSString *title;
    
    // ???
//    XCUIElement *detail = app.navigationBars[@"Detail"].staticTexts[@"Detail"];
//    title = detail.label;
    
    // 得到的是label
//    XCUIElement *detail = app.navigationBars[@"Detail"].otherElements[@"Detail"];
//    title = detail.label;
    
    // 得到的是NavigationBar
    XCUIElement *detail = app.navigationBars[@"Detail"];
    title = detail.identifier;
    
//    XCUIElement *detail = [app.navigationBars element];
//    title = detail.identifier;
    
//    XCUIElement *detail = app.navigationBars.element;
//    title = detail.identifier;
    
//    XCUIElement *detail = [app.navigationBars firstMatch];
//    title = detail.identifier;
    
    
    //XCTAssertEqualObjects(title, @"Detail", @"Finding Detail title failed!");
    // Expect: Assert.element().equalTo().failure();
    [self moc_waitForElementToAppear: detail];
    
}
    
// 使用chainable syntax
- (void)testTap {
    MOUIApplication*app = MOUIApplication.new;
    XCUIElementQuery *buttons = app.buttons;
    //MOUIElement *button = (MOUIElement *)buttons[@"登录"];
    // 问题：caught "NSInvalidArgumentException", "-[XCUIElement mo_tap]: unrecognized selector
    // 原因：button类型为XCUIElement，XCUIElement无mo_tap()方法，无法完全将XCUIElement强制转换为MOUIElement
    // 解决：？？？
    //button.mo_tap();
}

//
- (void)testTapChainableOne {
    MOUIApplication *app = MOUIApplication.new;
    // find方法和event都封装在MOUIApplication中
    app.mo_findButtonById(@"登录");
    //app.mo_tap();
    // 问题：链式调用时，报“caught "NSInvalidArgumentException", "-[XCUIElement mo_tap]: unrecognized selector”
    // 原因：
    // 解决：
    //app.mo_find(@"登录").mo_tap();
}

//
- (void)testTapChainableTwo {
    MOUIApplication*app = MOUIApplication.new;
    XCUIElementQuery *buttons = app.buttons;
    XCUIElement *button = buttons[@"登录"];
    // 问题：caught "NSInvalidArgumentException", "-[XCUIElement mo_tap]: unrecognized selector
    // 原因：button类型为XCUIElement，XCUIElement无mo_tap()方法
    // 解决：不使用XCUIElement的子类，使用它的分类来实现Event方法；
    button.mo_tap();
}

- (void)testTapChainableThree {
    MOUIApplication*app = MOUIApplication.new;
    // 实现目标：app.mo_find(@"登录").mo_tap();
    // caught "NSInvalidArgumentException", "-[XCUIElement mo_tap]: unrecognized selector
    app.mo_findButtonById(@"登录").mo_tap();
    sleep(5);
}



- (void)testTextField {
    
    XCUIApplication *app = XCUIApplication.new;
    // 使用Placeholder获取Element
    // 注意：textField和secureTextField是分别使用不同的Query来获取的；
    XCUIElement *textField = app.textFields[@"TextField"];
    XCUIElement *secureTextField = app.secureTextFields[@"SecureTextField"];
    
    [textField tap];
    [textField typeText:@"Account"];
    
    [secureTextField tap];
    [secureTextField typeText:@"Password"];
    
    sleep(5);
}

- (void)testTextFieldChainable {
    // 输入用户名
    self.mo_app.mo_findTextFieldByPlaceholder(@"TextField").mo_tap().mo_typeText(@"Account");
    // 输入秘密
    self.mo_app.mo_findSecureTextFieldByPlaceholder(@"SecureTextField").mo_tap().mo_typeText(@"Password");
    // 点击登录button，跳转到Detail页面
    self.mo_app.mo_findButtonById(@"登录").mo_tap();
    
    // NavigationBar
    //XCUIElement *detail = app.navigationBars[@"Detail"];
    //[self moc_waitForElementToAppear:detail];
    
    // Wait for Element
    // Expect: app.waitForElement(detail).toAppear();
    //self.mo_waitForElementToAppear(app.mo_findTitleByIdentifier(@"Detail"));
    self.mo_waitForElementToAppearTimeout(self.mo_app.mo_findTitleByIdentifier(@"Detail"), 5);
    
    // Assert
    XCTAssertEqualObjects(self.mo_app.mo_findTitleByIdentifier(@"Detail").identifier, @"Detail", @"Find title failed!");
//    self.mo_AssertEqualObjects(detail.identifier, @"Detail2", @"Failure...");
//    [self mo_AssertElement:detail.identifier equalTo:@"Detail" failure:@"Failure..."];
}

- (void)testTabBarChainable {
    /// find tabBarButton by index
    // 点击第二个tabBar
    self.mo_app.mo_findTabBarButtonByIndex(1).mo_tap();
    sleep(2);
    
    /// find tabBarButton by identifier
    // 点击第三个tabBar
    self.mo_app.mo_findTabBarButtonByIdentifier(@"Item3").mo_tap();
    sleep(5);
}

- (void)testCellChainable {
    // 点击第二个tabBar
    self.mo_app.mo_findTabBarButtonByIndex(1).mo_tap();
    
    /// find cell by index
    self.mo_app.mo_findCellByIndex(13).mo_tap();
    sleep(2);
    
    /// find cell by identifier
    //[[self.mo_app.cells.staticTexts elementMatchingType:XCUIElementTypeStaticText identifier:@"Column 0 cell 0"] tap];
    self.mo_app.mo_findCellByIdentifier(@"Column 2 cell 5").mo_tap();
    sleep(20);
}

- (void)testPickerChainable {
    // DatePicker
    // 设置日期
    self.mo_app.mo_findDatePickerWheelByIndex(0).mo_adjustToPickerWheelValue(@"Jul 28");
    sleep(2);
    // 设置小时
    self.mo_app.mo_findDatePickerWheelByIndex(1).mo_adjustToPickerWheelValue(@"5");
    sleep(3);
    // 设置分钟
    self.mo_app.mo_findDatePickerWheelByIndex(2).mo_adjustToPickerWheelValue(@"05");
    sleep(2);
    // 设置上午下午
    self.mo_app.mo_findDatePickerWheelByIndex(3).mo_adjustToPickerWheelValue(@"PM");
    sleep(2);
    
    // Picker
    self.mo_app.mo_findPickerWheelByIndex(0).mo_adjustToPickerWheelValue(@"济南");
    sleep(2);
    self.mo_app.mo_findPickerWheelByIndex(1).mo_adjustToPickerWheelValue(@"开封");
    sleep(2);
    self.mo_app.mo_findPickerWheelByIndex(2).mo_adjustToPickerWheelValue(@"承德");
    sleep(10);
}

- (void)testSegmentedControlChainable {
    // Find SegmentedControl tap by index.
    self.mo_app.mo_findSegmentedContrlTabByIndex(1).mo_tap();
    sleep(2);
    self.mo_app.mo_findSegmentedContrlTabByIndex(2).mo_tap();
    sleep(2);
    
    // Find SegmentedControl tap by identifier
    self.mo_app.mo_findSegmentedContrlTabByIdentifier(@"First").mo_tap();
    sleep(2);
    self.mo_app.mo_findSegmentedContrlTabByIdentifier(@"Third").mo_tap();
    sleep(10);
}

- (void)testBarButtonItemChainable {
    /// NavigationBar
    // 切换到tab
    self.mo_app.mo_findTabBarButtonByIndex(2).mo_tap();
    // 点击登录button跳转到Detail
    self.mo_app.mo_findButtonById(@"登录").mo_tap();
    // 点击Edit button
    self.mo_app.mo_findNavigationBarButtonByIndex(1).mo_tap();
    sleep(2);
    // 点击返回button
    self.mo_app.mo_findNavigationBarButtonByIdentifier(@"Item3").mo_tap();
    
    /// ToolBar
    // 点击登录button跳转到Detail
    self.mo_app.mo_findButtonById(@"登录").mo_tap();
    // 点击ToolBarItem1
    self.mo_app.mo_findToolBarButtonByIndex(0).mo_tap();
    sleep(2);
    // 点击ToolBarItem2
    self.mo_app.mo_findToolBarButtonByIdentifier(@"ToolBarItem2").mo_tap();
    sleep(2);
}

- (void)testSearchBarChainable {
    self.mo_app.mo_findTabBarButtonByIndex(2).mo_tap();
    //
    self.mo_app
    .mo_findSearchBar()
    .mo_tap();
    sleep(10);
}

- (void)testSwitchChainable {
    // Switch to second tab
    self.mo_app.mo_findTabBarButtonByIndex(1).mo_tap();
    // Tab the third Switch
    self.mo_app.mo_findSwitchByIndex(2).mo_tap();
    sleep(2);
    // Tab the fiveth Switch
    self.mo_app.mo_findSwitchByIndex(4).mo_tap();
    sleep(2);
}

- (void)testTextViewChainable {
    // Switch to Detail VC
    self.mo_app.mo_findTabBarButtonByIndex(2).mo_tap();
    self.mo_app.mo_findButtonById(@"登录").mo_tap();
    // TextView input
    // 问题：如果textView中有文本，输入会从文本前面进行？？？
    self.mo_app.mo_findTextViewByIndex(0).mo_tap().mo_typeText(@"Input in TextView...");
    sleep(5);
}





@end
