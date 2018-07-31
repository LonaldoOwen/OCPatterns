//
//  EOCEmployee.h
//  ClassClusterPattern
//
//  Created by owen on 2018/7/7.
//  Copyright © 2018 com.owen. All rights reserved.
//
/// 功能：Abstract Superclass
///
///

#import <Foundation/Foundation.h>



// Define enumeration type;
typedef NS_ENUM(NSInteger, EOCEmployeeType) {
    EOCEmployeeTypeDevoloper,
    EOCEmployeeTypeDesigner,
    EOCEmployeeTypeFinance,
};



@interface EOCEmployee : NSObject

// MARK: - Property

@property (nonatomic, copy) NSString *name;
@property NSUInteger salary;


// MARK: - Creating instance

// Helper for creating Employee objects;
+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type;


// MARK: - Public Methods

// Make Employees do their respective day's work;
- (void)doADaysWork;


@end
