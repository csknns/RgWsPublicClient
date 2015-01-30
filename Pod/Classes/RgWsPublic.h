#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
#import <objc/runtime.h>
@class RgWsPublic_RgWsPublicInputRtUser;
@class RgWsPublic_RgWsPublicInputRtBase;
@class RgWsPublic_RgWsPublicBasicRtUser;
@class RgWsPublic_RgWsPublicBasicRtBase;
@class RgWsPublic_RgWsPublicFirmActRtUserArray;
@class RgWsPublic_RgWsPublicFirmActRtUser;
@class RgWsPublic_RgWsPublicFirmActRtBase;
@class RgWsPublic_GenWsErrorRtUser;
@class RgWsPublic_GenWsErrorRtBase;
@interface RgWsPublic_RgWsPublicInputRtBase : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicInputRtBase *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicInputRtUser : RgWsPublic_RgWsPublicInputRtBase {
/* elements */
	NSString * afmCalledBy;
	NSString * afmCalledFor;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicInputRtUser *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * afmCalledBy;
@property (nonatomic, retain) NSString * afmCalledFor;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicBasicRtBase : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicBasicRtBase *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicBasicRtUser : RgWsPublic_RgWsPublicBasicRtBase {
/* elements */
	NSString * afm;
	NSDate * stopDate;
	NSString * postalAddressNo;
	NSString * doyDescr;
	NSString * doy;
	NSString * onomasia;
	NSString * legalStatusDescr;
	NSDate * registDate;
	NSString * deactivationFlag;
	NSString * deactivationFlagDescr;
	NSString * postalAddress;
	NSString * firmFlagDescr;
	NSString * commerTitle;
	NSString * postalAreaDescription;
	NSString * INiFlagDescr;
	NSString * postalZipCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicBasicRtUser *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * afm;
@property (nonatomic, retain) NSDate * stopDate;
@property (nonatomic, retain) NSString * postalAddressNo;
@property (nonatomic, retain) NSString * doyDescr;
@property (nonatomic, retain) NSString * doy;
@property (nonatomic, retain) NSString * onomasia;
@property (nonatomic, retain) NSString * legalStatusDescr;
@property (nonatomic, retain) NSDate * registDate;
@property (nonatomic, retain) NSString * deactivationFlag;
@property (nonatomic, retain) NSString * deactivationFlagDescr;
@property (nonatomic, retain) NSString * postalAddress;
@property (nonatomic, retain) NSString * firmFlagDescr;
@property (nonatomic, retain) NSString * commerTitle;
@property (nonatomic, retain) NSString * postalAreaDescription;
@property (nonatomic, retain) NSString * INiFlagDescr;
@property (nonatomic, retain) NSString * postalZipCode;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicFirmActRtBase : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicFirmActRtBase *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicFirmActRtUser : RgWsPublic_RgWsPublicFirmActRtBase {
/* elements */
	NSString * firmActDescr;
	NSString * firmActKind;
	NSString * firmActKindDescr;
	NSNumber * firmActCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicFirmActRtUser *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * firmActDescr;
@property (nonatomic, retain) NSString * firmActKind;
@property (nonatomic, retain) NSString * firmActKindDescr;
@property (nonatomic, retain) NSNumber * firmActCode;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicFirmActRtUserArray : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSMutableArray *RgWsPublicFirmActRtUser;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicFirmActRtUserArray *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
- (void)addRgWsPublicFirmActRtUser:(RgWsPublic_RgWsPublicFirmActRtUser *)toAdd;
@property (nonatomic, readonly) NSMutableArray * RgWsPublicFirmActRtUser;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_GenWsErrorRtBase : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_GenWsErrorRtBase *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_GenWsErrorRtUser : RgWsPublic_GenWsErrorRtBase {
/* elements */
	NSString * errorDescr;
	NSString * errorCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_GenWsErrorRtUser *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * errorDescr;
@property (nonatomic, retain) NSString * errorCode;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "RgWsPublic.h"
@class RgWsPublicBinding;
@interface RgWsPublic : NSObject {
	
}
+ (RgWsPublicBinding *)RgWsPublicBinding;
@end
@class RgWsPublicBindingResponse;
@class RgWsPublicBindingOperation;
@protocol RgWsPublicBindingResponseDelegate <NSObject>
- (void) operation:(RgWsPublicBindingOperation *)operation completedWithResponse:(RgWsPublicBindingResponse *)response;
@end
#define kServerAnchorCertificates   @"kServerAnchorCertificates"
#define kServerAnchorsOnly          @"kServerAnchorsOnly"
#define kClientIdentity             @"kClientIdentity"
#define kClientCertificates         @"kClientCertificates"
#define kClientUsername             @"kClientUsername"
#define kClientPassword             @"kClientPassword"
#define kNSURLCredentialPersistence @"kNSURLCredentialPersistence"
#define kValidateResult             @"kValidateResult"
@interface RgWsPublicBinding : NSObject <RgWsPublicBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval timeout;
	NSMutableArray *cookies;
	NSMutableDictionary *customHeaders;
	BOOL logXMLInOut;
	BOOL ignoreEmptyResponse;
	BOOL synchronousOperationComplete;
	id<SSLCredentialsManaging> sslManager;
	SOAPSigner *soapSigner;
}
@property (nonatomic, copy) NSURL *address;
@property (nonatomic) BOOL logXMLInOut;
@property (nonatomic) BOOL ignoreEmptyResponse;
@property (nonatomic) NSTimeInterval timeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSMutableDictionary *customHeaders;
@property (nonatomic, retain) id<SSLCredentialsManaging> sslManager;
@property (nonatomic, retain) SOAPSigner *soapSigner;
+ (NSTimeInterval) defaultTimeout;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(RgWsPublicBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (NSString *)MIMEType;
- (RgWsPublicBindingResponse *)rgWsPublicAfmMethodUsingRgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out pCallSeqId_out:(NSNumber *)aPCallSeqId_out pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out username:(NSString *)username password:(NSString *)password;
- (void)rgWsPublicAfmMethodAsyncUsingRgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out pCallSeqId_out:(NSNumber *)aPCallSeqId_out pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out username:(NSString *)username password:(NSString *)password delegate:(id<RgWsPublicBindingResponseDelegate>)responseDelegate;
- (RgWsPublicBindingResponse *)rgWsPublicVersionInfoUsing;
- (void)rgWsPublicVersionInfoAsyncUsingDelegate:(id<RgWsPublicBindingResponseDelegate>)responseDelegate;
@end
@interface RgWsPublicBindingOperation : NSOperation {
	RgWsPublicBinding *binding;
	RgWsPublicBindingResponse *response;
	id<RgWsPublicBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (nonatomic, retain) RgWsPublicBinding *binding;
@property (nonatomic, readonly) RgWsPublicBindingResponse *response;
@property (nonatomic, assign) id<RgWsPublicBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(RgWsPublicBinding *)aBinding delegate:(id<RgWsPublicBindingResponseDelegate>)aDelegate;
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
@end
@interface RgWsPublicBinding_rgWsPublicAfmMethod : RgWsPublicBindingOperation {
	RgWsPublic_RgWsPublicInputRtUser * RgWsPublicInputRt_in;
	RgWsPublic_RgWsPublicBasicRtUser * RgWsPublicBasicRt_out;
	RgWsPublic_RgWsPublicFirmActRtUserArray * arrayOfRgWsPublicFirmActRt_out;
	NSNumber * pCallSeqId_out;
	RgWsPublic_GenWsErrorRtUser * pErrorRec_out;
    /*UserToken Security Policy Header values*/
    NSString * username;
    NSString * password;
}
@property (nonatomic, retain) RgWsPublic_RgWsPublicInputRtUser * RgWsPublicInputRt_in;
@property (nonatomic, retain) RgWsPublic_RgWsPublicBasicRtUser * RgWsPublicBasicRt_out;
@property (nonatomic, retain) RgWsPublic_RgWsPublicFirmActRtUserArray * arrayOfRgWsPublicFirmActRt_out;
@property (nonatomic, retain) NSNumber * pCallSeqId_out;
@property (nonatomic, retain) RgWsPublic_GenWsErrorRtUser * pErrorRec_out;
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSString * password;
- (id)initWithBinding:(RgWsPublicBinding *)aBinding
             delegate:(id<RgWsPublicBindingResponseDelegate>)aDelegate
	RgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in
RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out
arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out
       pCallSeqId_out:(NSNumber *)aPCallSeqId_out
        pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out
             username:(NSString *)aUsername
             password:(NSString *)aPassword;
@end
@interface RgWsPublicBinding_rgWsPublicVersionInfo : RgWsPublicBindingOperation {
}
- (id)initWithBinding:(RgWsPublicBinding *)aBinding delegate:(id<RgWsPublicBindingResponseDelegate>)aDelegate
;
@end
@interface RgWsPublicBinding_envelope : NSObject {
}
+ (RgWsPublicBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements bodyKeys:(NSArray *)bodyKeys method:(NSString *)methodName;
@end
@interface RgWsPublicBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (nonatomic, retain) NSArray *headers;
@property (nonatomic, retain) NSArray *bodyParts;
@property (nonatomic, retain) NSError *error;
@end
@interface RgWsPublic_RgWsPublicHeaderUsernameToken : NSObject <NSCoding> {
    /* elements */
    NSString * username;
    NSString * password;
    /* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicHeaderUsernameToken *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSString * password;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface RgWsPublic_RgWsPublicHeaderSecurity : NSObject <NSCoding> {
    /* elements */
    RgWsPublic_RgWsPublicHeaderUsernameToken * usernameToken;
    /* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (RgWsPublic_RgWsPublicHeaderSecurity *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) RgWsPublic_RgWsPublicHeaderUsernameToken * usernameToken;
/* attributes */
- (NSDictionary *)attributes;
@end
