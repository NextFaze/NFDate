//
//  NFDateChainFormatter.m
//  NFDate
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import "NFDateChainParser.h"
#import "NFDateTime.h"

@interface NFDateChainParser ()
@property (nonatomic, strong) NSArray *formatters;  /**< array of NFDateFormatter objects */
@end

@implementation NFDateChainParser

- (id)init {
    self = [super init];
    if(self) {
        self.formatters = [NSArray array];
    }
    return self;
}

- (NFDate *)dateFromString:(NSString *)string {
    return [self executeChainWithString:string selector:@selector(dateFromString:)];
}

- (NFDateTime *)dateTimeFromString:(NSString *)string {
    return [self executeChainWithString:string selector:@selector(dateTimeFromString:)];
}

#pragma mark -

- (void)addParser:(NFDateFormatter *)formatter {
    self.formatters = [self.formatters arrayByAddingObject:formatter];
}

#pragma mark -

- (id)executeChainWithString:(NSString *)string selector:(SEL)selector {
    for(NFDateFormatter *formatter in self.formatters) {
        if([formatter isKindOfClass:[NFDateFormatter class]]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            id result = [formatter performSelector:selector withObject:string];
#pragma clang diagnostic pop

            if(result)
                return result;
        }
    }
    return nil;
}

@end
