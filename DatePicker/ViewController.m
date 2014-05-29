//
//  ViewController.m
//  DatePicker
//
//  Created by BSA univ 8 on 29/05/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDate * now = [NSDate date];
    
    [_datepicker setDate:now animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    NSDate * selected = [_datepicker date];
    
    NSString * message = [[NSString alloc]initWithFormat:@"the date and time you selected is %@ ",selected];
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"date and time selected " message:message delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    
    [alert show];
    
    
}
@end
