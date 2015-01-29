//
//  RgWsPublicClient.m
//  Pods
//
//  Created by Christos Koninis on 1/29/15.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import "RgWsPublicClient.h"

//@interface RgWsPublicClient ()

//@property (strong, nonatomic) RgWsPublicBinding *binding;
//@end

@implementation RgWsPublicClient

+ (RgWsPublicClient*)sharedInstance
{
    static RgWsPublicClient *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[RgWsPublicClient alloc] init];
    });
    return _sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        _logXMLPayloadAndHeaders = YES;
    }
    return self;
}

- (void)rgWsPublicVersionInfoSuccess:(void (^)(NSString *result))success
                             failure:(void (^)(NSError *error))failure
{
    RgWsPublicBinding *binding = [RgWsPublic RgWsPublicBinding];
    [binding setLogXMLInOut:_logXMLPayloadAndHeaders];
    RgWsPublicBindingResponse *response = [binding rgWsPublicVersionInfoUsing];
    if (response.error) {
        failure(response.error);
    }
    else {
        success([response.bodyParts firstObject]);
    }
}

- (void)rgWsPublicAfmMethodCallForAfm:(NSString *)afm
                              Success:(void (^)(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out,
                                                RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out,
                                                NSNumber *pCallSeqId_out,
                                                RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser,
                                                SOAPFault *pErrorRec_out))success
                              failure:(void (^)(NSError *error))failure
{
    RgWsPublicBinding *binding = [RgWsPublic RgWsPublicBinding];
    [binding setLogXMLInOut:_logXMLPayloadAndHeaders];
    
    RgWsPublic_RgWsPublicInputRtUser *rgWsPublic_RgWsPublicInputRtUser = [RgWsPublic_RgWsPublicInputRtUser new];
//    rgWsPublic_RgWsPublicInputRtUser.afmCalledBy = @"";
    rgWsPublic_RgWsPublicInputRtUser.afmCalledFor = afm;
    
    RgWsPublic_RgWsPublicBasicRtUser *rgWsPublic_RgWsPublicBasicRtUser = [RgWsPublic_RgWsPublicBasicRtUser new];
    
    RgWsPublic_RgWsPublicFirmActRtUserArray *rgWsPublic_RgWsPublicFirmActRtUserArray = [RgWsPublic_RgWsPublicFirmActRtUserArray new];
    
    NSNumber *pCallSeqId_out = [NSNumber numberWithInt:1];
    
    RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser = [RgWsPublic_GenWsErrorRtUser new];
    
    RgWsPublicBindingResponse *response
    = [binding rgWsPublicAfmMethodUsingRgWsPublicInputRt_in:rgWsPublic_RgWsPublicInputRtUser
                                      RgWsPublicBasicRt_out:rgWsPublic_RgWsPublicBasicRtUser
                             arrayOfRgWsPublicFirmActRt_out:rgWsPublic_RgWsPublicFirmActRtUserArray
                                             pCallSeqId_out:pCallSeqId_out
                                              pErrorRec_out:rgWsPublic_GenWsErrorRtUser];
    if (response.error) {
        failure(response.error);
    }
    else {
        RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out;
        RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out;
        NSNumber *pCallSeqId_out;
        RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser;
        SOAPFault *pErrorRec_out;
        for (id bodyPart in response.bodyParts) {
            if ([bodyPart isKindOfClass:[RgWsPublic_RgWsPublicBasicRtUser class]]) {
                rgWsPublicBasicRt_out = bodyPart;
            }
            else if ([bodyPart isKindOfClass:[RgWsPublic_RgWsPublicFirmActRtUserArray class]]) {
                arrayOfRgWsPublicFirmActRt_out = bodyPart;
            }
            else if ([bodyPart isKindOfClass:[NSNumber class]]) {
                pCallSeqId_out = bodyPart;
            }
            else if ([bodyPart isKindOfClass:[RgWsPublic_GenWsErrorRtUser class]]) {
                rgWsPublic_GenWsErrorRtUser = bodyPart;
            }
            else if ([bodyPart isKindOfClass:[SOAPFault class]]) {
                pErrorRec_out = bodyPart;
            }
        }
        success(rgWsPublicBasicRt_out, arrayOfRgWsPublicFirmActRt_out, pCallSeqId_out, rgWsPublic_GenWsErrorRtUser, pErrorRec_out);
    }
}

@end
