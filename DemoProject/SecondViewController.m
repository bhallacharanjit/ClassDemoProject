//
//  SecondViewController.m
//  DemoProject
//
//  Created by charanjit singh on 28/01/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Value from Second View Controller %@",self.myData);
}


-(void) viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    NSLog(@"View disappeared");
    
}

- (IBAction)backClick:(id)sender {
//    [self.viewController gotDataFromOtherActivity:@{@"hi":@"hello"}];
    
    
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:@"hello" forKey:@"hi"];
    [userDefaults synchronize];
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)valueChanged:(id)sender {
    NSLog(@"%ld",self.mSegmentControl.selectedSegmentIndex);
    NSLog(@"%d",self.mSwitch.isOn);
}
- (IBAction)switchValueChanged:(UISwitch *)sender {
    if (sender.isOn) {
        [self.mActivityIndicator startAnimating];
    } else {
        [self.mActivityIndicator stopAnimating];
    }
    
}
- (IBAction)sliderValueChhanged:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [self.mSliderValueLabel setText:[NSString stringWithFormat:@"%d",(int)slider.value]];
    
}
@end
