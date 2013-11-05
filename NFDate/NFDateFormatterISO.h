//
//  NFDateFormatterISO.h
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NFDateChainParser.h"

@interface NFDateFormatterISO : NSObject

+ (NFDateChainParser *)dateParser;
+ (NFDateChainParser *)dateTimeParser;

@end
