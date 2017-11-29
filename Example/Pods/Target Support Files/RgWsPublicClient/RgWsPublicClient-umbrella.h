#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RgWsPublicClient.h"
#import "NSDate+ISO8601Parsing.h"
#import "NSDate+ISO8601Unparsing.h"
#import "RgWsPublic.h"
#import "USAdditions.h"
#import "USGlobals.h"
#import "xsd.h"

FOUNDATION_EXPORT double RgWsPublicClientVersionNumber;
FOUNDATION_EXPORT const unsigned char RgWsPublicClientVersionString[];

