//
//  NFDateTime.h
//  NFDate
//
//  Created by Andrew Williams on 1/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NFDate.h"

@interface NFDateTime : NFDate

- (NFDate *)plusHours:(int)hours;
- (NFDate *)plusMinutes:(int)minutes;
- (NFDate *)plusSeconds:(int)seconds;

@end
