//
//  NFDateBase.h
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Abstract superclass of all date objects
 */
@interface NFDateBase : NSObject

@property (nonatomic, readonly) NSTimeZone *timezone;

- (id)initWithDate:(NSDate *)date;

- (id)initWithDate:(NSDate *)date timezone:(NSTimeZone *)timezone;

/**
 Initialise with an ISO-8601 formatted date string
 @param dateString ISO-8601 formatted date string.
 */
- (id)initWithString:(NSString *)dateString;

- (NFDateBase *)plusYears:(int)years;
- (NFDateBase *)plusMonths:(int)months;
- (NFDateBase *)plusDays:(int)days;

- (NFDateBase *)plusComponents:(NSDateComponents *)components;

@end
