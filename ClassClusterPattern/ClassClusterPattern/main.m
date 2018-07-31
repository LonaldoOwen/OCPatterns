//
//  main.m
//  ClassClusterPattern
//
//  Created by owen on 2018/7/7.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCEmployee.h"
//#import "EOCEmployeeDeveloper.h"
//#import "EOCEmployeeDesigner.h"
//#import "EOCEmployeeFinance.h"



//
void employeeSample() {
    // Initialize a developer instance;
    EOCEmployee *developer = [EOCEmployee employeeWithType:EOCEmployeeTypeDevoloper];
    [developer setName:@"张三"];
    [developer setSalary:10000];
    [developer doADaysWork];
    // Initialize a designer instance;
    EOCEmployee *designer = [EOCEmployee employeeWithType:EOCEmployeeTypeDesigner];
    [designer doADaysWork];
    // Initialize a financer instance;
    EOCEmployee *financer = [EOCEmployee employeeWithType:EOCEmployeeTypeFinance];
    [financer doADaysWork];
}

//
void numberSample() {
    NSNumber *intNumber = [NSNumber numberWithInt:10];
    NSLog(@"intNumber: %@", intNumber);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //
        //employeeSample;
        
        //
        numberSample();
    }
    return 0;
}


