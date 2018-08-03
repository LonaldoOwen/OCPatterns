//
//  DetailViewController.m
//  ChainProgram
//
//  Created by owen on 2018/8/2.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// MARK: - Actions

- (IBAction)handleEditAction:(UIBarButtonItem *)sender {
    NSLog(@"#handleEditAction:");
}

- (IBAction)handleToolBarItem1Action:(UIBarButtonItem *)sender {
    NSLog(@"#handleToolBarItem1Action:");
}

- (IBAction)handleToolBarItem2Action:(UIBarButtonItem *)sender {
    NSLog(@"#handleToolBarItem2Action:");
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
