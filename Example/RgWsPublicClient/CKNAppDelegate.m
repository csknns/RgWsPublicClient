//
//  CKNAppDelegate.m
//  RgWsPublicClient
//
//  Created by CocoaPods on 01/28/2015.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import "CKNAppDelegate.h"
#import <RgWsPublicClient/RgWsPublicClient.h>

@implementation CKNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    //initialise the client with proper username and password
    [RgWsPublicClient clientWithUsername:@"<username>" password:@"<password>"];
    
    //calling rgWsPublicAfmMethod (no username/password required)
    
//    [[RgWsPublicClient sharedInstance] rgWsPublicVersionInfoSuccess:^(NSString *result) {
//        NSLog(@"%@ %@", [result class], result);
//    } failure:^(NSError *error) {
//        NSLog(@"%@ %@", [error class], [error localizedDescription]);
    //    }];
    
    //calling rgWsPublicVersionInfo (must have valid username/password)
    
//    [[RgWsPublicClient sharedInstance]
//     rgWsPublicAfmMethodCallForAfm:@"123456789"
//     Success:^(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out,
//               RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out,
//               NSNumber *pCallSeqId_out,
//               RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser) {
//         
//         NSLog(@"onomasia    : %@", rgWsPublicBasicRt_out.onomasia);
//         NSLog(@"doyDescr    : %@", rgWsPublicBasicRt_out.doyDescr);
//         NSLog(@"commerTitle : %@", rgWsPublicBasicRt_out.commerTitle);
//         
//         for (RgWsPublic_RgWsPublicFirmActRtUser *user in arrayOfRgWsPublicFirmActRt_out.RgWsPublicFirmActRtUser) {
//             NSLog(@"firmActDescr: %@ %@", user.firmActKindDescr, user.firmActDescr);
//         }
//     } failure:^(NSError *error) {
//         NSLog(@"%@ %@", [error class], [error localizedDescription]);
//     }];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
