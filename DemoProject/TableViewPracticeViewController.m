//
//  TableViewPracticeViewController.m
//  DemoProject
//
//  Created by charanjit singh on 25/02/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import "TableViewPracticeViewController.h"

@interface TableViewPracticeViewController ()

@end

@implementation TableViewPracticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.recordsArray = [[NSArray alloc] initWithObjects:@"1",@"Obj 2",@"Obj 3",@" 4", nil];
    
    
    self.sectionedArrayDictionary = [[NSMutableDictionary alloc] init];
    
    [self.sectionedArrayDictionary setObject:self.recordsArray forKey:@"S1"];
    
    
    self.recordsArray = [[NSArray alloc] initWithObjects:@"adsjkgha",@"adjksf",@"adhjsgk", nil];
    
    [self.sectionedArrayDictionary setObject:self.recordsArray forKey:@"S2"];
    
    
    self.recordsArray = [[NSArray alloc] initWithObjects:@"w",@"e",@"d", nil];
    
    [self.sectionedArrayDictionary setObject:self.recordsArray forKey:@"S3"];
    
    
    
    self.recordsArray = [[NSArray alloc] initWithObjects:@"z",@"fg",@"g", nil];
    
    [self.sectionedArrayDictionary setObject:self.recordsArray forKey:@"S4"];
    
    
    
    self.recordsArray = [[NSArray alloc] initWithObjects:@"z2",@"fg3",@"g4", nil];
    
    [self.sectionedArrayDictionary setObject:self.recordsArray forKey:@"S5"];
    
    
    
    
    self.recordsArray = [[NSArray alloc] initWithObjects:@"zdsfg",@"fsdfg",@"gasd", nil];
    
    [self.sectionedArrayDictionary setObject:self.recordsArray forKey:@"S6"];
    
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sectionedArrayDictionary.count;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    NSArray * keys = [self.sectionedArrayDictionary allKeys];
    
    NSString * str = [keys objectAtIndex:section];
    
    NSLog(@"Key Name is %@",str);
    NSArray * arr = [self.sectionedArrayDictionary objectForKey:str];
    return arr.count;
    
    
//
//    if (section == 0) {
//        NSArray * arr = [self.sectionedArrayDictionary objectForKey:@"S1"];
//        return arr.count;
//    } else if (section == 1) {
//        NSArray * arr = [self.sectionedArrayDictionary objectForKey:@"S2"];
//        return arr.count;
//    }
//    return 0;
}


-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray * keys = [self.sectionedArrayDictionary allKeys];
    
    NSString * str = [keys objectAtIndex:section];
    
    return str;
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * identifier = @"TableCell";
    
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil)  {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    
    NSArray * keys = [self.sectionedArrayDictionary allKeys];
    
    NSString * str = [keys objectAtIndex:indexPath.section];
    
    NSLog(@"Key Name is %@",str);
    NSArray * arr = [self.sectionedArrayDictionary objectForKey:str];
    
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = str;
    
    [cell.imageView setImage:[UIImage imageNamed:@"add_icon"]];
    
    return cell;
}



-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray * keys = [self.sectionedArrayDictionary allKeys];
    
    NSString * str = [keys objectAtIndex:indexPath.section];
    
    NSLog(@"Key Name is %@",str);
    NSArray * arr = [self.sectionedArrayDictionary objectForKey:str];
    
    NSLog(@"%@",[arr objectAtIndex:indexPath.row]);
}

@end
