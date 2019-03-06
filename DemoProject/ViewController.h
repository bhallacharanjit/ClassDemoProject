//
//  ViewController.h
//  DemoProject
//
//  Created by charanjit singh on 28/01/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate, UIActionSheetDelegate>

@property (nonatomic, retain) NSString * myString;
@property (nonatomic, retain) NSMutableArray * myArray;
@property (nonatomic) NSInteger x;
- (IBAction)buttonClick:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *writeTextField;
- (IBAction)showArrayClick:(id)sender;
-(void) gotDataFromOtherActivity:(NSDictionary *) dictionary;
@property (weak, nonatomic) IBOutlet UILabel *lbl_name;
@end

