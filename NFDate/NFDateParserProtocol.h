//
//  NFDateParserProtocol.h
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NFDateImpl.h"
#import "NFDateTime.h"

/**
 * Date parsing related interface
 */

@protocol NFDateParserProtocol <NSObject>
/**
 Parse a date from the given text, returning a new NFDate
 @param string The string to parse.
 @return A date representation of string interpreted using the receiver’s current settings. If dateFromString: can not parse the string, returns nil.
 */
- (NFDate *)dateFromString:(NSString *)string;

/**
 Parse a date-time from the given text, returning a new NFDate
 @param string The string to parse.
 @return A date representation of string interpreted using the receiver’s current settings. If dateTimeFromString: can not parse the string, returns nil.
 */
- (NFDateTime *)dateTimeFromString:(NSString *)string;

@end
