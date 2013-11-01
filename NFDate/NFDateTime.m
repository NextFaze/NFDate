//
//  NFDateTime.m
//  NFDate
//
//  Created by Andrew Williams on 1/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import "NFDateTime.h"

@implementation NFDateTime

- (NFDate *)plusHours:(int)hours {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.hour = hours;
    return [self plusComponents:components];
}

- (NFDate *)plusMinutes:(int)minutes {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.hour = minutes;
    return [self plusComponents:components];
}

- (NFDate *)plusSeconds:(int)seconds {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.second = seconds;
    return [self plusComponents:components];
}

@end
