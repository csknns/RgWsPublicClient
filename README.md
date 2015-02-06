# RgWsPublicClient

[![CI Status](http://img.shields.io/travis/csknns/RgWsPublicClient.svg?style=flat)](https://travis-ci.org/csknns/RgWsPublicClient)
[![Version](https://img.shields.io/cocoapods/v/RgWsPublicClient.svg?style=flat)](http://cocoadocs.org/docsets/RgWsPublicClient)
[![License](https://img.shields.io/cocoapods/l/RgWsPublicClient.svg?style=flat)](http://cocoadocs.org/docsets/RgWsPublicClient)
[![Platform](https://img.shields.io/cocoapods/p/RgWsPublicClient.svg?style=flat)](http://cocoadocs.org/docsets/RgWsPublicClient)

**RgWsPublicClient** is an Objective-C client for accessing the [new web service](http://www.gsis.gr/gsis/info/gsis_site/PublicIssue/wnsp/wnsp_pages/wnsp.html) provided by [GSIS](http://www.gsis.gr/gsis/info/gsis_site/PublicIssue/wnsp/wnsp_pages/wnsp.html) for physical persons and legal entities. The new webservice provides two methods, one for retrieving the service's version information and the second for retrieving information regarding a requested VAT(A.F.M.). The latter requires authentication using the UsernameToken Extensions of WSS(see [Web Services Security UsernameToken Profile](http://docs.oasis-open.org/wss/v1.1/wss-v1.1-spec-pr-UsernameTokenProfile-01.htm)). The project has a simple block-based client that provides two methods (corresponding to the two web services) with error checking and handling for all layers (transport, application), and an example Xcode project that uses the client.

## Usage

To run the example project, just run:

    pod try RgWsPublicClient

or clone the repo, and run:

    pod install

from the Example directory first. Then include the client `#import <RgWsPublicClient/RgWsPublicClient.h>` in your source file.

### Example

* Initialise the client:

```objectivec
    [RgWsPublicClient clientWithUsername:@"<username>" password:@"<password>"];
```

Then grab the shared instance anywhere and execute the method you need

* Calling rgWsPublicAfmMethod (no valid username/password required):

```objectivec
    [[RgWsPublicClient sharedInstance] rgWsPublicVersionInfoSuccess:^(NSString *result) {
        NSLog(@"result version string: %@", result);
    } failure:^(NSError *error) {
        NSLog(@"error: %@", [error localizedDescription]);
    }];
```
* Calling rgWsPublicVersionInfo (must have valid username/password):

```objectivec
    [[RgWsPublicClient sharedInstance]
     rgWsPublicAfmMethodCallForAfm:@"123456789"
     Success:^(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out,
               RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out,
               NSNumber *pCallSeqId_out,
               RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser) {
         
         NSLog(@"onomasia    : %@", rgWsPublicBasicRt_out.onomasia);
         NSLog(@"doyDescr    : %@", rgWsPublicBasicRt_out.doyDescr);
         NSLog(@"commerTitle : %@", rgWsPublicBasicRt_out.commerTitle);
         
         for (RgWsPublic_RgWsPublicFirmActRtUser *user in arrayOfRgWsPublicFirmActRt_out.RgWsPublicFirmActRtUser) {
             NSLog(@"firmActDescr: %@ %@", user.firmActKindDescr, user.firmActDescr);
         }
     } failure:^(NSError *error) {
         NSLog(@"error: %@", [error localizedDescription]);
     }];
```

## Requirements

### Registering for the service

In order use the method that requires authentication, you must register for the service and generate a username and a password following the details found here: <http://www.gsis.gr/gsis/info/gsis_site/PublicIssue/wnsp/wnsp_pages/wnsp.html>.

## Installation

### Using CocoaPods (Recommended)

RgWsPublicClient is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

    pod "RgWsPublicClient"

then import the client `#import <RgWsPublicClient/RgWsPublicClient.h>` in your source file.

### Manually
* Drag the files from RgWsPublicClient/Pod/Classes to you project
* import the RgWsPublicClient.h `#import <RgWsPublicClient/RgWsPublicClient.h>` 
* add the -fno-objc-arc flag for all files **except** RgWsPublicClient.m


## Author

Christos Koninis, christos.koninis@gmail.com

## License

RgWsPublicClient is available under the MIT license. See the LICENSE file for more info.

