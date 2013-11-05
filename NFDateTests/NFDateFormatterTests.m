//
//  NFDateFormatterTests.m
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "NFDateFormatterISO.h"

#define PERFORM_TEST_PARSE(string, arg1, arg2, arg3, arg4, arg5, arg6, arg7) \
    [self performTestParse:string year:arg1 month:arg2 day:arg3 hour:arg4 min:arg5 sec:arg6 tz:arg7]

@interface NFDateFormatterTests : GHTestCase

@end

@implementation NFDateFormatterTests

- (void)testParseDateTime {
    PERFORM_TEST_PARSE(@"2008-12-29T00:27:42-08:00", 2008, 12, 29, 0, 27, 42, -480);
}

#pragma mark -

- (void)performTestParse:(NSString *)string year:(int)year month:(int)month
                     day:(int)day hour:(int)hour min:(int)min sec:(int)sec tz:(int)tz {
    
    NFDateTime *date = [[NFDateFormatterISO dateTimeParser] dateTimeFromString:string];
    GHAssertEquals([date year], year, @"year");
    GHAssertEquals([date month], month, @"month");
    GHAssertEquals([date day], day, @"day");
    GHAssertEquals([date hour], hour, @"hour");
    GHAssertEquals([date minute], min, @"minute");
    GHAssertEquals([date second], sec, @"second");
}

@end
