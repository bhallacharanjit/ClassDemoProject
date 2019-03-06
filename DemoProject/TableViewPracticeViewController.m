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
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.recordsArray.count;
}


-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Header";
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * identifier = @"TableCell";
    
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil)  {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [self.recordsArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"Subtitle";
    
    [cell.imageView setImage:[UIImage imageNamed:@"add_icon"]];
    
    return cell;
}



-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@",[self.recordsArray objectAtIndex:indexPath.row]);
}

@end
