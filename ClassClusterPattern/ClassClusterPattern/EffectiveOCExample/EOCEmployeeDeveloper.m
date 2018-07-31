//
//  EOCEmployeeDeveloper.m
//  ClassClusterPattern
//
//  Created by owen on 2018/7/7.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "EOCEmployeeDeveloper.h"

@implementation EOCEmployeeDeveloper

// Overwrite Superclass methods;
- (void)doADaysWork {
    [self writeCode];
}

- (void)writeCode {
    //
    NSLog(@"I am a developer, I can write code.");
}


@end
