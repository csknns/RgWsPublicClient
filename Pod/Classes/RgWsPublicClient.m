//
//  RgWsPublicClient.m
//  Pods
//
//  Created by Christos Koninis on 1/29/15.
//  Copyright (c) 2014 Christos Koninis. All rights reserved.
//

#import "RgWsPublicClient.h"

static RgWsPublicClient *_sharedInstance = nil;

@interface RgWsPublicClient ()

@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *password;

- (id)initWithUsername:(NSString *)username password:(NSString *)password;

@end

@implementation RgWsPublicClient

+ (RgWsPublicClient*)sharedInstance
{
    if (_sharedInstance == nil) {
        [NSException raise:@"InstanceNotExists"
                    format:@"Attempted to access shared instance before initialization. Please call [clientWithUsername] first."];
    }
    return _sharedInstance;
}

+ (RgWsPublicClient*)clientWithUsername:(NSString *)username password:(NSString *)password
{
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[RgWsPublicClient alloc] initWithUsername:username password:password];
    });
    return _sharedInstance;
}

- (id)initWithUsername:(NSString *)username password:(NSString *)password
{
    self = [super init];
    if (self) {
        _logXMLPayloadAndHeaders = YES;
        self.username = username;
        self.password = password;
    }
    return self;
}

- (RgWsPublicBinding *)binding
{
    if (!_binding) {
        _binding = [RgWsPublic RgWsPublicBinding];
    }

    return _binding;
}

- (void)rgWsPublicVersionInfoSuccess:(void (^)(NSString *result))success
                             failure:(void (^)(NSError *error))failure
{
    RgWsPublicBinding *binding = [self binding];
    [binding setLogXMLInOut:_logXMLPayloadAndHeaders];
    RgWsPublicBindingResponse *response = [binding rgWsPublicVersionInfoUsing];

    id result = [response.bodyParts firstObject];
    
    if(response.error) {
        failure(response.error);
    }
    else if([result isKindOfClass:[NSString class]]) {
        success((NSString *)result);
    }
    else if ([result isKindOfClass:[SOAPFault class]])  {
        SOAPFault *soapFault = result;
        NSString *errorDescription = soapFault.faultstring ? soapFault.faultstring : @"Unkown SOAP error";
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey : errorDescription, @"SOAPFault" : soapFault};
        NSError *error = [NSError errorWithDomain:@"RgWsPublic" code:0 userInfo:userInfo];
        failure(error);
    }
}

- (void)rgWsPublicAfmMethodCallForAfm:(NSString *)afm
                              Success:(void (^)(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out,
                                                RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out,
                                                NSNumber *pCallSeqId_out,
                                                RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser))success
                              failure:(void (^)(NSError *error))failure
{
    if ((self.username.length == 0) || (self.password.length == 0)) {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Please initialise client with username and password to use this method"};
        NSError *error = [NSError errorWithDomain:@"RgWsPublic" code:0 userInfo:userInfo];
        failure(error);
    }
    RgWsPublicBinding *binding = [self binding];
    [binding setLogXMLInOut:_logXMLPayloadAndHeaders];
    
    RgWsPublic_RgWsPublicInputRtUser *rgWsPublic_RgWsPublicInputRtUser = [RgWsPublic_RgWsPublicInputRtUser new];
    //TODO: add support for afmCalleBy
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
                                              pErrorRec_out:rgWsPublic_GenWsErrorRtUser
                                                   username:self.username
                                                   password:self.password];
    if (response.error) {
        failure(response.error);
    }
    else {
        RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out = nil;
        RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out = nil;
        NSNumber *pCallSeqId_out = nil;
        RgWsPublic_GenWsErrorRtUser *pErrorRec_out = nil;
        SOAPFault *soapFault = nil;
        
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
                pErrorRec_out = bodyPart;
            }
            else if ([bodyPart isKindOfClass:[SOAPFault class]]) {
                soapFault = bodyPart;
            }
        }
        
        //application layer fault
        if (pErrorRec_out
            /*Ungly hack cause the attribute xsi:nil="true" produces empty objects*/
            && (pErrorRec_out.errorCode.length>0 || pErrorRec_out.errorDescr.length>0)) {
            NSString *errorDescription = pErrorRec_out.errorDescr ? pErrorRec_out.errorDescr : @"Unkown application layer error";
            NSDictionary *userInfo = @{NSLocalizedDescriptionKey : errorDescription, @"pErrorRec_out" : pErrorRec_out};
            NSError *error = [NSError errorWithDomain:@"RgWsPublic" code:0 userInfo:userInfo];
            failure(error);
        }
        //SOAP layer fault
        else if (soapFault) {
            NSString *errorDescription = soapFault.faultstring ? soapFault.faultstring : @"Unkown SOAP error";
            NSDictionary *userInfo = @{NSLocalizedDescriptionKey : errorDescription, @"SOAPFault" : soapFault};
            NSError *error = [NSError errorWithDomain:@"RgWsPublic" code:0 userInfo:userInfo];
            failure(error);
        }
        else {
            success(rgWsPublicBasicRt_out, arrayOfRgWsPublicFirmActRt_out, pCallSeqId_out, rgWsPublic_GenWsErrorRtUser);
        }
    }
}

@end
