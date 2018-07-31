//
//  EOCEmployeeFinance.m
//  ClassClusterPattern
//
//  Created by owen on 2018/7/7.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "EOCEmployeeFinance.h"

@implementation EOCEmployeeFinance

// Overwrite Superclass methods;
- (void)doADaysWork {
    [self manageMoney];
}

- (void)manageMoney {
    NSLog(@"I am a financer, I manage money.");
}

@end
