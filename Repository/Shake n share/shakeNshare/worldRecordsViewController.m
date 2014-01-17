//
//  worldRecordsViewController.m
//  shakeNshare
//
//  Created by Blue Horn on 10/24/13.
//  Copyright (c) 2013 com.iws. All rights reserved.
//

#import "worldRecordsViewController.h"
#import <Social/Social.h>
@interface worldRecordsViewController ()

@end

@implementation worldRecordsViewController
@synthesize worldRecordsArray;
@synthesize outLabel;

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
	// Do any additional setup after loading the view.
    self.worldRecordsArray = [[NSArray alloc] initWithObjects:
                              @"A fire and explosion at a subway in New York City kills many.",
                              @" A fire in the old section of Paris, France." ,
                              @"A chemical attack on the United States.",
                              @" More cyber attacks." ,
                              @"  A lot more of the population will move to rural areas.",
                              @"Another Super Storm like Sandy hitting the USA, Canada and Europe." ,
                              @" Nuclear attack on New York.",
                              @" Terrorist attack at the Empire State Building." ,
                              @" Meteor Strike in the US.",
                              @"Contaminated bodies of water in major cities." ,
                              @" Stock markets world-wide will close for one week.",
                              @" A huge earthquake in the Caribbean." ,
                              @"  Man-eating plants.",
                              @" Seattle, Washington in ruins after a large earthquake." ,
                              @"  Wheat shortage worldwide.",
                              @" Cuba and Puerto Rico becoming part of the USA." ,
                              @" A weather satellite will come crashing into a building. ",
                              @" A major automobile company will go bankrupt." ,
                              @" CN Tower collapsing - fire and explosion. ",
                              @" Civil War will break out in the USA." ,
                              @"  Northern Ireland, Belfast and Dublin at war again.",
                              @"More underground homes being built. " ,
                              @"  A 9.1 earthquake hits Moscow, Russia.",
                              @"Fish and sea life evaporating worldwide. " ,
                              @"  Iran and Israel at war attacking each other.",
                              @" Danger around President Barak Obama." ,
                              @" Communication glitches worldwide. ",
                              @"Problems escalating in the Middle East. " ,
                              @" A gigantic earthquake in California. ",
                              @"A famous Canadian politician will pass. " ,
                              @"  North and South Korea attacking each other.",
                              @"A disease killing horses around the world."
                              , nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Share Pridiction On Facebook And Twitter

- (IBAction)shareit:(id)sender {
    
    UIActionSheet *share = [[UIActionSheet alloc] initWithTitle:@"Sharing Pridiction" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Tweet!",@"Facebook It...!",nil];
    [share showInView:self.view];
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (actionSheet.tag == 0) {
        
        
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController *tweetsheet = [SLComposeViewController
                                                   composeViewControllerForServiceType:SLServiceTypeTwitter];
            [tweetsheet setInitialText:self.outLabel.text];
            [self presentViewController:tweetsheet animated:YES completion:nil];
            
            
        }else{
            
            UIAlertView * alertview = [[UIAlertView alloc]initWithTitle:@"Sorry" message:@"You cannot Send Massege Right Now" delegate:self cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil, nil];
            [alertview show];
            
        }
        
        
    }else if (actionSheet.tag == 1)
    {
        
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
            SLComposeViewController *facesheet = [SLComposeViewController
                                                  composeViewControllerForServiceType:SLServiceTypeFacebook];
            [facesheet setInitialText:self.outLabel.text];
            
            [self presentViewController:facesheet animated:YES completion:nil];
            
            
        }else{
            
            UIAlertView * alertview = [[UIAlertView alloc]initWithTitle:@"Sorry" message:@"You cannot Send Massege Right Now" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertview show];
            
            
        }}
    
}






- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}
-(BOOL) canBecomeFirstResponder{
    return YES;
}
-(void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"Motion Began");
}
-(void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"Motion Canceld");
}
-(void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSUInteger index= arc4random_uniform(self.worldRecordsArray.count);
    
    self.outLabel.text = [self.worldRecordsArray objectAtIndex:index];}
@end
