//
//  predictionViewController.h
//  shakeNshare
//
//  Created by UsmanHaider on 10/1/13.
//  Copyright (c) 2013 com.iws. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Social/Social.h>

@interface predictionViewController : UIViewController <UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UILabel *outlabel;
@property (strong,nonatomic) NSArray *predictionArray;
- (IBAction)btnBack:(id)sender;





@end
