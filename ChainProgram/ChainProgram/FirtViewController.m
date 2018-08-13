//
//  FirtViewController.m
//  ChainProgram
//
//  Created by owen on 2018/8/2.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "FirtViewController.h"
#import "SgcOneVC.h"
#import "SgcTwoVC.h"

@interface FirtViewController ()

@property (nonatomic, strong) SgcOneVC *sgcOne;
@property (nonatomic, strong) SgcTwoVC *sgcTwo;
@property (nonatomic, strong) UIViewController *currentVC;

@end

@implementation FirtViewController


- (SgcOneVC *)sgcOne {
    if (_sgcOne == nil) {
        _sgcOne = [SgcOneVC segmentedVC];
    }
    return _sgcOne;
}

- (SgcTwoVC *)sgcTwo {
    if (_sgcTwo == nil) {
        _sgcTwo = [SgcTwoVC segmentedVC];
    }
    return _sgcTwo;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // VC初始化设置
    [self addChildViewController:self.sgcOne];
    [self.view addSubview:self.sgcOne.view];
    self.currentVC = _sgcOne;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// MARK: - Actions
- (IBAction)handleSegmentedControllAction:(UISegmentedControl *)sender {
    NSLog(@"#FirtViewController: segmented controll: %ld ", (long)sender.selectedSegmentIndex);
    switch (sender.selectedSegmentIndex) {
        case 0:
            [self toggleController:self.currentVC newController:self.sgcOne];
            break;
        case 1:
            [self toggleController:self.currentVC newController:self.sgcTwo];
            break;
            
        default:
            break;
    }
}

// 切换ChildVC
- (void)toggleController: (UIViewController *)oldVC newController: (UIViewController *)newVC {
    // 不用添加subview
    [self addChildViewController:newVC];
    //[self.view addSubview:newVC.view];
    
    [self transitionFromViewController:oldVC toViewController:newVC duration:0.0 options:UIViewAnimationOptionTransitionNone animations:nil completion:^(BOOL finished) {
        if (finished) {
            [newVC didMoveToParentViewController:self];
            [oldVC willMoveToParentViewController:nil];
            // 不用移除subview
            [oldVC removeFromParentViewController];
            //[oldVC.view removeFromSuperview];
            self.currentVC = newVC;
        } else {
            self.currentVC = oldVC;
        }
    }];
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
