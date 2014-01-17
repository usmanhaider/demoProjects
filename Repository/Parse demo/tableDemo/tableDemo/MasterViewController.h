//
//  MasterViewController.h
//  tableDemo
//
//  Created by Blue Horn on 12/9/13.
//  Copyright (c) 2013 bluehorn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parse/Parse.h"


@interface MasterViewController : PFQueryTableViewController

@property (strong,nonatomic) NSObject *horoscope;


@end
