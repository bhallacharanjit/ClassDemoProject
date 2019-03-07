//
//  TableViewPracticeViewController.h
//  DemoProject
//
//  Created by charanjit singh on 25/02/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewPracticeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSArray * recordsArray;



@property (nonatomic, retain) NSMutableDictionary * sectionedArrayDictionary;


@end

NS_ASSUME_NONNULL_END
