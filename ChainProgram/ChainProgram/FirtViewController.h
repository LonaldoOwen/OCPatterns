//
//  FirtViewController.h
//  ChainProgram
//
//  Created by owen on 2018/8/2.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirtViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>


@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;



@end
