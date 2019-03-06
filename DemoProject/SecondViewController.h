//
//  SecondViewController.h
//  DemoProject
//
//  Created by charanjit singh on 28/01/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *mSegmentControl;
@property (weak, nonatomic) IBOutlet UISwitch *mSwitch;

@property (nonatomic, retain) NSString * myData;
- (IBAction)valueChanged:(id)sender;

@property (nonatomic, retain) ViewController * viewController;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *mActivityIndicator;
- (IBAction)switchValueChanged:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UILabel *mSliderValueLabel;

@end

NS_ASSUME_NONNULL_END
