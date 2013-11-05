//
//  main.m
//  NFDateTests
//
//  Created by Andrew Williams on 5/11/2013.
//  Copyright (c) 2013 NextFaze. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "AppDelegate.h"
#import <GHUnitIOS/GHUnit.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
        int retVal;
        if (getenv("GHUNIT_CLI")) {
            retVal = [GHTestRunner run];
        } else {
            retVal = UIApplicationMain(argc, argv, nil, @"GHUnitIOSAppDelegate");
        }
        return retVal;
    }
}
