//
//  NFDateFormatterISO.m
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import "NFDateFormatterISO.h"
#import "NFDateChainParser.h"

// ISO 8601 formats
static NSArray *dateFormats;
static NSArray *timeFormats;

@implementation NFDateFormatterISO

+ (void)load {
    // ISO 8601 date formats
    
    dateFormats = [[NSArray alloc] initWithObjects:
                   @"YYYY-mm-dd",   // year-month-day
                   @"YYYYmmdd",     // year month day
                   @"YYYY-DDD",     // day of year
                   @"YYYYDDD",      // day of year
                   @"YYYY-mm",      // year-month
                   @"YYYY-'W'ww-c", // with weekday number (1-7) beginning with monday
                   @"YYYY-'W'ww",   // week of year
                   @"YYYY'W'wwc",   // with weekday number (1-7) beginning with monday
                   @"YYYY'W'ww",    // week of year
                   nil
                   ];
    
    timeFormats = [[NSArray alloc] initWithObjects:
                   @"HH:mm:ss",
                   @"HHmmss",
                   @"HH:mm",
                   @"HHmm",
                   @"HH",
                   nil
                   ];
}

+ (NFDateChainParser *)dateParser {
    NFDateChainParser *parser = [[NFDateChainParser alloc] init];
    
    return parser;
}

+ (NFDateChainParser *)dateTimeParser {
    NFDateChainParser *parser = [[NFDateChainParser alloc] init];
    
    return parser;
}

@end
