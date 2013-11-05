//
//  NFDateTests.m
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "NFDate.h"

@interface NFDateTests : GHTestCase

@end

@implementation NFDateTests

- (void)testPlusYears {
    NSDate *d = [NSDate dateWithTimeIntervalSince1970:123];
    NFDate *date = [[NFDate alloc] initWithDate:d];
}

@end
