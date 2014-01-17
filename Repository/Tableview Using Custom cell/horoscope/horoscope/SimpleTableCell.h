//
//  SimpleTableCell.h
//  horoscope
//
//  Created by Blue Horn on 1/1/14.
//  Copyright (c) 2014 bluehorn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *TimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
