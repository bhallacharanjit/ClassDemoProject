//
//  GestureViewController.m
//  DemoProject
//
//  Created by charanjit singh on 09/04/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UITapGestureRecognizer * recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap1Rec)];
    recognizer.numberOfTouchesRequired = 1;
    recognizer.numberOfTapsRequired = 2;
    
    [self.view addGestureRecognizer:recognizer];
    
}


-(void) tap1Rec {
    NSLog(@"Tap1");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)panAction:(id)sender {
    [self.view setBackgroundColor:[UIColor orangeColor]];
}
- (IBAction)longPressAction:(id)sender {
    [self.view setBackgroundColor:[UIColor greenColor]];
}
- (IBAction)pinchAction:(id)sender {
    [self.view setBackgroundColor:[UIColor yellowColor]];
}

- (IBAction)tappedTwice:(id)sender {
    NSLog(@"%@",@"tapped twice");
    
    
    
    
    [self.view setBackgroundColor:[UIColor redColor]];
}
@end
