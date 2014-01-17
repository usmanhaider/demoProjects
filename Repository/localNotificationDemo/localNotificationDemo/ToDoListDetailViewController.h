//
//  ToDoListDetailViewController.h
//  localNotificationDemo
//
//  Created by Blue Horn on 11/26/13.
//  Copyright (c) 2013 bluehorn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoListDetailViewController : UIViewController
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *todoText;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end
