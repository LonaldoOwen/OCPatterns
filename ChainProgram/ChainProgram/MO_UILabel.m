//
//  MO_UILabel.m
//  ChainProgram
//
//  Created by owen on 2018/6/30.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "MO_UILabel.h"

@implementation MO_UILabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



// Initializatin
+ (instancetype)initLabelWith:(void (^)(MO_UILabel *))labelBlock {
    MO_UILabel *label = [[MO_UILabel alloc] init];
    if (labelBlock) {
        labelBlock(label);
    }
    return label;
}



// Getter - labelFrame
- (MO_UILabel *(^)(CGRect))labelFrame {
    // Block full syntax.
    MO_UILabel *(^labelFrame)(CGRect) = ^MO_UILabel *(CGRect rect) {
        self.frame = rect;
        return self;
    };
    return labelFrame;
}

// Getter - labelBackgroundColor
- (MO_UILabel *(^)(UIColor *))labelBackgroundColor {
    // Block shorthand syntax.
    return ^MO_UILabel *(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

// Getter - labelText
- (MO_UILabel *(^)(NSString *))labelText {
    return ^MO_UILabel *(NSString *string) {
        self.text = string;
        return self;
    };
}








@end
