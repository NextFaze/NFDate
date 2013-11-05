//
//  NFDateFormatter.h
//  NFDate
//
//  Created by Andrew Williams on 1/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NFDateParserProtocol.h"

/**
 Instances of NSDateFormatter create string representations of NSDate objects, and convert textual representations of dates and times into NFDate objects. You can express the representation of dates and times flexibly using pre-set format styles or custom format strings.
 */
@interface NFDateFormatter : NSObject <NFDateParserProtocol>

@end
