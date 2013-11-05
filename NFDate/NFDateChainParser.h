//
//  NFDateChainFormatter.h
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NFDateParserProtocol.h"
#import "NFDateFormatter.h"

/**
 Parse a date using a chain of date parsers. Each parser is used in turn, until one is found that can parse a date.
 */
@interface NFDateChainParser : NSObject <NFDateParserProtocol>

- (void)addParser:(NFDateFormatter *)formatter;

@end
