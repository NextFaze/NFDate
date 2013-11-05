//
//  NFDateImpl.h
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NFDate : NSObject

@property (nonatomic, readonly) NSTimeZone *timezone;

@property (nonatomic, readonly) NSUInteger year;
@property (nonatomic, readonly) NSUInteger month;
@property (nonatomic, readonly) NSUInteger day;
@property (nonatomic, readonly) NSUInteger dayOfYear;

- (id)initWithDate:(NSDate *)date;

- (id)initWithDate:(NSDate *)date timezone:(NSTimeZone *)timezone;

/**
 Initialise with an ISO-8601 formatted date string
 @param dateString ISO-8601 formatted date string.
 */
- (id)initWithString:(NSString *)dateString;

- (NFDate *)plusYears:(int)years;
- (NFDate *)plusMonths:(int)months;
- (NFDate *)plusDays:(int)days;

@end
