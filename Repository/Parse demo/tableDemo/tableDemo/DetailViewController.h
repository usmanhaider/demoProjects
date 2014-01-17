//
//  DetailViewController.h
//  tableDemo
//
//  Created by Blue Horn on 12/9/13.
//  Copyright (c) 2013 bluehorn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"


@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) id detailItemTitle;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *zodiacNameLabel;

@end
