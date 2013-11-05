//
//  NFDateTime.h
//  NFDate
//
//  Created by Andrew Williams on 1/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NFDateImpl.h"

@interface NFDateTime : NFDate

@property (nonatomic, readonly) NSUInteger hour;
@property (nonatomic, readonly) NSUInteger minute;
@property (nonatomic, readonly) NSUInteger second;

- (NFDateTime *)plusHours:(int)hours;

- (NFDateTime *)plusMinutes:(int)minutes;

- (NFDateTime *)plusSeconds:(int)seconds;

@end
