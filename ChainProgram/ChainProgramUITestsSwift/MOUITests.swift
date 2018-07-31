//
//  MOUITests.swift
//  ChainProgramUITestsSwift
//
//  Created by owen on 2018/7/31.
//  Copyright © 2018 com.owen. All rights reserved.
//

import Foundation
import XCTest




/**
 *  功能：XCTestCase扩展
 */
extension XCTestCase {
    
    /// 等待element出现
    /**
     * 等待element出现--简便方法
     * waitForExpectations()--XCTestCase自带延时执行方法
     */
    func waitForElementToAppear(_ element: XCUIElement) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 20, handler: nil)
    }
    
    
    /**
     *  等待element出现--
     */
    func waitForElementToAppear(_ identifier: String, element: XCUIElement, for seconds: Double, file: String = #file, line: UInt = #line) {
        //print("#############等待#\(identifier)#出现。。。")
        myPrint("等待#\(identifier)#出现。。。")
        let existsPredicate = NSPredicate(format: "exists == true")
        //let notExistsPredicate = NSPredicate(format: "exists == false")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        //expectation(for: notExistsPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: seconds) { (error) -> Void in
            if error != nil {
                let message = "Failed to find \(element) after \(seconds) seconds"
                self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
            } else {
                let placeholder = "################################################\n"
                let message = "Succeed to find \(element)"
                print(placeholder + message + "\n" + placeholder)
            }
        }
    }
    
    
    /// 打印
    /**
     * 自定义print
     */
    // 使用closure解决？？？
    func myPrint(_ message: Any) {
        let placeholder = "################################################\n"
        let message = "\(message)"
        print(placeholder + message + "\n" + placeholder)
    }
    
    
    /// 断言
    // if expression1 = expression2 else message
    //XCTAssertEqual(expression1, expression2, message, , )
    //let staticText = app.navigationBars["订单详情"].staticTexts["订单详情"]
    //XCTAssertEqual(app.navigationBars.element.identifier, "订单详情", "下单失败")
    
    
}
