//
//  Chicken.h
//  TestApp
//
//  Created by John Tumminaro on 1/22/14.
//  Copyright (c) 2014 Tiny Little Gears. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chicken : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) float weightInPounds;

+ (Chicken *)getMeARandomChicken;
+ (NSString *)speciesName;

- (NSTimeInterval)timeToBake;

@end
