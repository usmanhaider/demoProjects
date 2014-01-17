//
//  ToDoListDetailViewController.m
//  localNotificationDemo
//
//  Created by Blue Horn on 11/26/13.
//  Copyright (c) 2013 bluehorn. All rights reserved.
//

#import "ToDoListDetailViewController.h"

@interface ToDoListDetailViewController ()

@end

@implementation ToDoListDetailViewController

@synthesize todoText;
@synthesize datePicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.todoText.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    [self.todoText resignFirstResponder];
    // Get the current date
    NSDate *pickerDate = [self.datePicker date];
    // Schedule the notification
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = pickerDate;
    localNotification.alertBody = self.todoText.text;
    localNotification.alertAction = @"Show me the Item";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber]+1;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    // Request to reload table view data
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"reloadData" object:self];
    // Dismiss the view controller
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NO];
}

-(BOOL) textFieldShouldReturn:(UITextAlignment *) textField{
    [self.todoText resignFirstResponder];
    return NO;
}
@end
