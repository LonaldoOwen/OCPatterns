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
    MOUIApplication *app = MOUIApplication.new;
    // 输入用户名
    app.mo_findTextFieldByPlaceholder(@"TextField").mo_tap().mo_typeText(@"Account");
    // 输入秘密
    app.mo_findSecureTextFieldByPlaceholder(@"SecureTextField").mo_tap().mo_typeText(@"Password");
    
    //
    app.mo_findButtonById(@"登录").mo_tap();
    
    // Expect: app.waitForElement(detail).toAppear();
    // 得到的是NavigationBar
    XCUIElement *detail = app.navigationBars[@"Detail"];
//    [self moc_waitForElementToAppear:detail];
    self.mo_waitForElementToAppear(app.mo_findTitleByIdentifier(@"Detail"));
    XCTAssertEqualObjects(app.mo_findTitleByIdentifier(@"Detail").identifier, @"Detail", @"Find title failed!");
    self.mo_AssertElement(detail.identifier, @"Detail2", @"Failure...");
}













@end
