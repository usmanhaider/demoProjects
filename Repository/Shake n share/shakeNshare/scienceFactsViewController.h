//
//  scienceFactsViewController.h
//  shakeNshare
//
//  Created by Blue Horn on 10/25/13.
//  Copyright (c) 2013 com.iws. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface scienceFactsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *outLabel;
- (IBAction)btnBack:(id)sender;
@property (strong,nonatomic) NSArray *scienceFacts;
-(IBAction)shareit:(id)sender;
@end
