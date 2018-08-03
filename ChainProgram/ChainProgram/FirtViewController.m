//
//  FirtViewController.m
//  ChainProgram
//
//  Created by owen on 2018/8/2.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "FirtViewController.h"

@interface FirtViewController ()

@end

@implementation FirtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 配置pickerView
    self.pickerView.dataSource = self;
    [self.pickerView setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




// MARK: - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 3;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 5;
}


// MARK: - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString *string;
    if (component == 0) {
        string = @[@"石家庄", @"济南", @"郑州", @"太原", @"西安"][row];
    } else if (component == 1) {
        string = @[@"衡水", @"泰山", @"开封", @"晋中", @"宝鸡"][row];
    } else {
        string = @[@"承德", @"菏泽", @"驻马店", @"临汾", @"咸阳"][row];
    }
    
    return string;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"Selected component %ld row %ld.", (long)component, (long)row);
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
