//
//  NFDate.h
//  NFDate
//
//  Created by Andrew Williams on 1/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NFDate : NSObject

@property (nonatomic, readonly) NSTimeZone *timezone;

- (id)initWithDate:(NSDate *)date;
- (id)initWithDate:(NSDate *)date timezone:(NSTimeZone *)timezone;
- (id)initWithString:(NSString *)dateString;

- (NFDate *)plusYears:(int)years;
- (NFDate *)plusMonths:(int)months;
- (NFDate *)plusDays:(int)days;

- (NFDate *)plusComponents:(NSDateComponents *)components;

@end
