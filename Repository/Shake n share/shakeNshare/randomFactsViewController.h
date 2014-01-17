//
//  randomFactsViewController.h
//  shakeNshare
//
//  Created by Blue Horn on 10/13/13.
//  Copyright (c) 2013 com.iws. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface randomFactsViewController : UIViewController

@property (strong,nonatomic) NSArray *randomFactsArray;

@property (weak, nonatomic) IBOutlet UILabel *randomFactOut;

- (IBAction)btnBack:(id)sender;

-(IBAction)shareIt:(id)sender;
-(IBAction)exit:(id)sender;
@end
