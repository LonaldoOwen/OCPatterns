//
//  EOCEmployee.m
//  ClassClusterPattern
//
//  Created by owen on 2018/7/7.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "EOCEmployee.h"
#import "EOCEmployeeDeveloper.h"
#import "EOCEmployeeDesigner.h"
#import "EOCEmployeeFinance.h"


@implementation EOCEmployee

+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type {
    // Initialize employee instance with EOCEmployeeType
    switch (type) {
        case EOCEmployeeTypeDevoloper:
            return [EOCEmployeeDeveloper new];
            break;
        case EOCEmployeeTypeDesigner:
            return [EOCEmployeeDesigner new];
        case EOCEmployeeTypeFinance:
            return [EOCEmployeeFinance new];
            break;
    }
}

- (void)doADaysWork {
    // Subclasses implement this;
}

@end
