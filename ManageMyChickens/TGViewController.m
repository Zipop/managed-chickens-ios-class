//
//  TGViewController.m
//  ManageMyChickens
//
//  Created by John Tumminaro on 1/22/14.
//  Copyright (c) 2014 Tiny Little Gears. All rights reserved.
//

#import "TGViewController.h"
#import "Chicken.h"

@interface TGViewController ()

@property (nonatomic, strong) Chicken *randomChicken;

@end

@implementation TGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.randomChicken = [Chicken getMeARandomChicken];
    
    self.chickenNameLabel.text = [NSString stringWithFormat:@"Chicken Name: %@", self.randomChicken.name];
    self.chickenWeightLabel.text = [NSString stringWithFormat:@"Chicken Weight: %.2f pounds", self.randomChicken.weightInPounds];
    self.chickenCookTimeLabel.text = [NSString stringWithFormat:@"Cook Time: %d mins", (int)roundf([self.randomChicken timeToBake] / 60)];    
}

@end
