//
//  SwitchCell.h
//  ChainProgram
//
//  Created by owen on 2018/8/2.
//  Copyright © 2018 com.owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subTitle;
@property (weak, nonatomic) IBOutlet UISwitch *switchAccessory;



@end
