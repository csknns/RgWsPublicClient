//
//  RgWsPublicClient.h
//  Pods
//
//  Created by Christos Koninis on 1/29/15.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RgWsPublic.h"

@interface RgWsPublicClient : NSObject
@property (nonatomic) BOOL logXMLPayloadAndHeaders;

+ (RgWsPublicClient*)clientWithUsername:(NSString *)username password:(NSString *)password;

+ (RgWsPublicClient*)sharedInstance;

- (void)rgWsPublicVersionInfoSuccess:(void (^)(NSString *result))success
                             failure:(void (^)(NSError *error))failure;

- (void)rgWsPublicAfmMethodCallForAfm:(NSString *)afm
                              Success:(void (^)(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out,
                                                RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out,
                                                NSNumber *pCallSeqId_out,
                                                RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser))success
                              failure:(void (^)(NSError *error))failure;

@end
