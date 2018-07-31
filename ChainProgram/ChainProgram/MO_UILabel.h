//
//  MO_UILabel.h
//  ChainProgram
//
//  Created by owen on 2018/6/30.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MO_UILabel : UILabel

// Define block property（block as property）
@property (nonatomic, copy) MO_UILabel *(^labelFrame)(CGRect frame);
@property (nonatomic, copy) MO_UILabel *(^labelBackgroundColor)(UIColor *color);
@property (nonatomic, copy) MO_UILabel *(^labelText)(NSString *text);

//
+ (instancetype)initLabelWith:(void (^)(MO_UILabel *))labelBlock;

@end
