//
//  main.m
//  RgWsPublicClient
//
//  Created by Christos Koninis on 01/28/2015.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CKNAppDelegate.h"

/**
 A empty app delegate to be used when running unit tests in order to avoid polluting the code coverage statistics
 with code not runned directly from the test methods
 */
@interface TestAppDelegate : UIResponder <UIApplicationDelegate>
@end

@implementation TestAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end

int main(int argc, char * argv[])
{
    @autoreleasepool {
#ifdef DEBUG
        if (NSClassFromString(@"XCTestCase")) {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([TestAppDelegate class]));
        }
#endif
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([CKNAppDelegate class]));
    }
}
