//
//  ViewController.m
//  horoscope
//
//  Created by Blue Horn on 1/1/14.
//  Copyright (c) 2014 bluehorn. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSArray *dataArray;
    NSArray *thumbnailArray;
    NSArray *dateArray;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dataArray = [NSArray arrayWithObjects:@"Aries",@"Taurus",@"Gemini",@"Cancer",@"Leo",@"Virgo",@"Libra",@"Scorpio",@"Sagittarius",@"Capricon",@"Aquarius",@"Pisces", nil];
    thumbnailArray = [NSArray arrayWithObjects:@"aries.jpg",@"taurus.jpg",@"gemini.jpg",@"cancer.jpg",@"leo.jpg",@"virgo.jpg",@"libra.jpg",@"scorpio.jpg",@"sagitarious.jpg",@"capricon.jpg",@"aquarius.jpg",@"pices.jpg", nil];
    dateArray = [NSArray arrayWithObjects:@"March21-April 19",
                 @"April 20-May 20",
                 @"May 21-June 20",
                 @"June 21-July 22",
                 @"July 23-August 22",
                 @"August 23-September",
                 @"September23-October 22",
                 @"October 23-November 21",
                 @"November 22-December 21",
                 @"December 22-January 19",
                 @"January 20-February 18",
                 @"February19-Marach 20", nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [dataArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    
//    if (cell==nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
//    }
//    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
////    cell.imageView.image = [UIImage imageNamed:@"capricon.jpg"];
//
//    cell.imageView.image = [UIImage imageNamed:[thumbnailArray objectAtIndex:indexPath.row]];
    

    
    SimpleTableCell *cell = (SimpleTableCell *) [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell==nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.nameLabel.text = [dataArray objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnailArray objectAtIndex:indexPath.row]];
    cell.TimeLabel.text = [dateArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

@end
