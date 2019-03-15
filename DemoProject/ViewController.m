//
//  ViewController.m
//  DemoProject
//
//  Created by charanjit singh on 28/01/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"this is my first message");
    
    
    self.myArray = [[NSMutableArray alloc] init];
    
    
    NSArray * arr = [[NSArray alloc] initWithObjects:@"test",@"this", nil];
    NSArray * arr1 = [NSArray arrayWithObjects:@"asd",@"asd", nil];
    NSArray * arr2 = @[@"asd",@"asd"];
    
    
    NSMutableArray * mutArr = [[NSMutableArray alloc] init];
    [mutArr addObject:@"asd"];
    [mutArr addObject:[NSNumber numberWithInteger:12]];
    
    [mutArr objectAtIndex:0];
    
    mutArr.count;
    
    
    NSDictionary * dict = [[NSDictionary alloc] initWithObjects:@[@"asdf",@"asdasd"] forKeys:@[@"asd",[NSNumber numberWithInteger:22]]];
    NSDictionary * dict2 = @{@"hello":@"hello1"};
    
    
    [dict2 objectForKey:@"hello"];
    
    dict2.count;
    
    
    
    [self.myString length];
    self.myString.length;
    
    
    
    self.myString = @"my message";
    self.myString = [[NSString alloc] initWithString:@"my message"];
    NSLog(@"%@",self.myString);
    
//    int x = 22;
    self.x = 19;
    NSLog(@"%@",self.myArray);
    
    
    NSLog(@"%ld",self.x+1);
    
    for (int i=1; i<=self.x; i++) {
        NSLog(@"%ld * %d = %ld",self.x,i,self.x*i);
    }
    
    int j=1;
    while (j<20) {
        NSLog(@"%ld * %d = %ld",self.x,j,self.x*j);
        j++;
    }
    
    if (self.x) { //== , != ,<= ,>=,
        NSLog(@"Printed table of 19");
    }
    
    
    self.x==18?NSLog(@"true"):NSLog(@"false");
    if (self.x == 18) {
        NSLog(@"true");
    } else {
        NSLog(@"false");
    }
    
    
    
    [self addTwoNumbers:2 :6];
    
    [self multiplyTwoNumber:2 myNumber2is:6];
    
    [self multiplyTwoNumber:13 myNumber2is:12];
    
    
    
    
    for (int i=0;i<10; i++) {
        if (i==8) {
            return;
        }
        if (i==4) {
            continue;
        }
        
        NSLog(@"%d",i);
    }
    
    
    
    
}






-(int) addTwoNumbers:(int)num1 :(int) num2 {
    int sum = num1 + num2;
    return sum;
}

-(int) multiplyTwoNumber:(int)num1 myNumber2is:(int) num2 {
    int mul = num1 * num2;
    return mul;
}



- (IBAction)buttonClick:(UIButton *)sender {
    
    SecondViewController * secondview = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    secondview.myData = @"hello";
    secondview.viewController = self;
    
    [self.navigationController pushViewController:secondview animated:YES];
    
    
    //[self presentViewController:secondview animated:YES completion:nil];
    
    
//    NSLog(@"%@",self.writeTextField.text);
//    
//    [self.myArray addObject:self.writeTextField.text];
//    self.writeTextField.text = @"";
//    
//    
//    NSLog(@"Length of array is %ld",self.myArray.count);
    
    
}
- (IBAction)showArrayClick:(id)sender {
    
    
    
//    for (int i=0; i<self.myArray.count; i++) {
//        NSLog(@"%@",[self.myArray objectAtIndex:i]);
//    }
    
//    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
//    [defaults removeObjectForKey:@"hi"];
//    [defaults synchronize];
//    self.writeTextField.text = @"";
    
    
//    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel",@"Retry",@"Abort", nil];
//    [alertView show];
    
    
    UIActionSheet * actionSheet = [[UIActionSheet alloc] initWithTitle:@"Aren you sure you want to delete?" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"No Just Save",@"dasd", nil];
    [actionSheet showInView:self.view];
    
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"clicked button in AcitonSheet is %ld",buttonIndex);
}



-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"clicked button is %ld",buttonIndex);
}


-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSUserDefaults * dsafadsf = [NSUserDefaults standardUserDefaults];
    NSString * str = [dsafadsf objectForKey:@"hi"];
    self.writeTextField.text = str;
    self.lbl_name.text = str;
}


-(void) gotDataFromOtherActivity:(NSDictionary *) dictionary {
    self.writeTextField.text =[dictionary objectForKey:@"hi"];
    NSLog(@"GOT DATA %@",[dictionary objectForKey:@"hi"]);
}
@end
