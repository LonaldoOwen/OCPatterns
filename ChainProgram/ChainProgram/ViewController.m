//
//  ViewController.m
//  ChainProgram
//
//  Created by owen on 2018/6/30.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "ViewController.h"
#import "MO_UILabel.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Show a label with Objective-C syntax.
    //[self showALabelWithOCSyntax];
    
    // Show a label with chainable syntax.
    //[self showALabelWithChainableSyntax];
    
    // Show a label with NSLayoutConstraints.
    //[self showALabelWithNSLayoutConstraints];
    
    // Show a label with Masonry.
    //[self showALabelWithMasonry];
    
    // 配置slider
    self.showSliderValueLabel.text = [NSString stringWithFormat:@"%0.2f", self.slider.value];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// MARK: Actions

- (IBAction)handleSliderAction:(id)sender {
    float value = [(UISlider *)sender value];
    self.showSliderValueLabel.text = [NSString stringWithFormat:@"%0.2f", value ];
}





// MARK: - Examples

// Show a label with Objective-C syntax.
- (void)showALabelWithOCSyntax {
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 100, 300, 50);
    label.backgroundColor = [UIColor grayColor];
    label.text = @"Show a label with Objective-C syntax.";
    [self.view addSubview:label];
}

// Show a label with chainable syntax.
- (void)showALabelWithChainableSyntax {
    [self.view addSubview:[MO_UILabel initLabelWith:^(MO_UILabel *label) {
        label
        .labelFrame(CGRectMake(10, 200, 300, 50))
        .labelText(@"Show a label with chainable syntax.")
        .labelBackgroundColor([UIColor orangeColor]);
    }]];
}

// Show a label with NSLayoutConstraints.
- (void)showALabelWithNSLayoutConstraints {
    UIView *backView = [[UIView alloc] init];
    backView.frame = CGRectMake(10, 300, 300, 90);
    backView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:backView];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Show a label with Masonry.";
    label.backgroundColor = [UIColor whiteColor];
    [backView addSubview:label];
    // NSLayoutConstraints
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [label.leftAnchor constraintEqualToAnchor:backView.leftAnchor constant:10].active = YES;
    [label.rightAnchor constraintEqualToAnchor:backView.rightAnchor constant:-10].active = YES;
    [label.topAnchor constraintEqualToAnchor:backView.topAnchor constant:10].active = YES;
    [label.bottomAnchor constraintLessThanOrEqualToAnchor:backView.bottomAnchor constant:-10].active = YES;
}

// Show a label with Masonry.
- (void)showALabelWithMasonry {
    UIView *backView = [[UIView alloc] init];
    backView.frame = CGRectMake(10, 400, 300, 90);
    backView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:backView];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Show a label with Masonry.";
    label.backgroundColor = [UIColor whiteColor];
    [backView addSubview:label];
    // Masonry constaints
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(backView.mas_left).offset(10);
        make.right.equalTo(backView.mas_right).offset(-10);
        make.top.equalTo(backView.mas_top).offset(10);
        make.bottom.lessThanOrEqualTo(backView.mas_bottom).offset(-10);
    }];
}




@end
