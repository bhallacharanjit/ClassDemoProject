//
//  CustomTableViewCell.h
//  DemoProject
//
//  Created by charanjit singh on 13/03/19.
//  Copyright © 2019 aprosoftech. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *mName;
@property (weak, nonatomic) IBOutlet UILabel *mAddress;
@property (weak, nonatomic) IBOutlet UIImageView *mImageView;

@end

NS_ASSUME_NONNULL_END
