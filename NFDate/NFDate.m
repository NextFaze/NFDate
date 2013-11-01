//
//  NFDate.m
//  NFDate
//
//  Created by Andrew Williams on 1/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import "NFDate.h"

@interface NFDate ()
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSTimeZone *timezone;
@end

@implementation NFDate

- (id)initWithDate:(NSDate *)date {
    self = [super init];
    if(self) {
        _date = date;
        _timezone = [NSTimeZone defaultTimeZone];
    }
    return self;
}

- (id)initWithDate:(NSDate *)date timezone:(NSTimeZone *)timezone {
    self = [self initWithDate:date];
    if(self) {
        _timezone = timezone;
    }
    return self;
}

- (id)initWithString:(NSString *)dateString {
    return nil;
}

#pragma mark -

- (NFDate *)plusYears:(int)years {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.year = years;
    return [self plusComponents:components];
}

- (NFDate *)plusMonths:(int)months {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.month = months;
    return [self plusComponents:components];
}

- (NFDate *)plusDays:(int)days {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.day = days;
    return [self plusComponents:components];
}

- (NFDate *)plusComponents:(NSDateComponents *)components {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *date = [calendar dateByAddingComponents:components toDate:self.date options:0];
    return [[[self class] alloc] initWithDate:date timezone:self.timezone];
}

@end
