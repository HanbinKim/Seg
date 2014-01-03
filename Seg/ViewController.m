//
//  ViewController.m
//  Seg
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UISegmentedControl *segment;
}
- (IBAction)chooseNumber:(id)sender;


@end

@implementation ViewController

-(IBAction)chooseNumber:(id)sender
{
    UISegmentedControl *control = (UISegmentedControl *)sender;
    NSString *selectedStr = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
    NSLog(@"Index:%d - Title:%@",control.selectedSegmentIndex, selectedStr);
    
}

- (void)handleBallSelection:(UISegmentedControl *)sender{
    switch (sender.selectedSegmentIndex) {
        case 0:
            NSLog(@"야구!");
            break;
        case 1:
            NSLog(@"농구!");
            break;
        case 2:
            NSLog(@"축구!");
            break;
        case 3:
            NSLog(@"배구!");
        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *baseball = [UIImage imageNamed:@"car1.png"];
    UIImage *basketball = [UIImage imageNamed:@"car2.png"];
    UIImage *football = [UIImage imageNamed:@"car3.png"];
    UIImage *volleyball = [UIImage imageNamed:@"car4.png"];
    NSArray *items = [NSArray arrayWithObjects:baseball,basketball,football,volleyball,nil];
    
    segment = [[UISegmentedControl alloc] initWithItems:items];
    segment.frame = CGRectMake(10, 100, 300, 40);
    
    [self.view addSubview:segment];
    
    segment.selectedSegmentIndex = 2;
    
    [segment addTarget:self action:@selector(handleBallSelection:) forControlEvents:UIControlEventValueChanged];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
