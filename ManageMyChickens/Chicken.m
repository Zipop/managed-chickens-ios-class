//
//  Chicken.m
//  TestApp
//
//  Created by John Tumminaro on 1/22/14.
//  Copyright (c) 2014 Tiny Little Gears. All rights reserved.
//

#import "Chicken.h"

@implementation Chicken

#pragma mark - Public

+ (Chicken *)getMeARandomChicken
{
    Chicken *randomChicken = [[Chicken alloc] init];
    randomChicken.name = [Chicken randomChickenName];
    randomChicken.weightInPounds = [Chicken randomChickenWeight];
    
    NSLog(@"Created Chicken with Name %@", randomChicken.name);
    
    return randomChicken;
}

+ (NSString *)speciesName
{
    return @"Gallus gallus domesticus";
}

- (NSTimeInterval)timeToBake
{
    return 1800 * self.weightInPounds;
}

#pragma mark - Private

+ (NSString *)randomChickenName
{
    NSArray *randomChickenNames = @[
                                    @"Popcorn",
                                    @"Dinner",
                                    @"Jefferson Davis",
                                    @"Gobble",
                                    @"After-egg",
                                    @"Gobble Junior"
                                    ];
    unsigned int random = arc4random_uniform(5);
    return randomChickenNames[random];
}

+ (float)randomChickenWeight
{
    srand48(time(0));
    return drand48() * (arc4random_uniform(4) + 1) + 1;
}

@end
