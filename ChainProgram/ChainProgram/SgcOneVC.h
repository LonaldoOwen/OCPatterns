//
//  SgcOneVC.h
//  ChainProgram
//
//  Created by owen on 2018/8/6.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import "ViewController.h"

@interface SgcOneVC : ViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

+ (SgcOneVC *)segmentedVC;

@end
