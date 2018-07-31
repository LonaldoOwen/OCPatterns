//
//  EOCEmployeeDesigner.m
//  ClassClusterPattern
//
//  Created by owen on 2018/7/7.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "EOCEmployeeDesigner.h"

@implementation EOCEmployeeDesigner

// Overwrite Superclass methods;
- (void)doADaysWork {
    [self designArt];
}

- (void)designArt {
    NSLog(@"I am a designer, I can design art.");
}

@end
