//
//  RgWsClientTests.m
//  
//
//  Created by Christos Koninis on 25/11/2017.
//

#import <XCTest/XCTest.h>
@import RgWsPublicClient;

#define rgWsPublicVersionInfoXMLResponse @"<env:Envelope xmlns:env=\"http://schemas.xmlsoap.org/soap/envelope/\"><env:Header/><env:Body><m:rgWsPublicVersionInfoResponse xmlns:m=\"http://gr/gsis/rgwspublic/RgWsPublic.wsdl\"><result>Version: 3.1.0, 11/04/2014, Copyright \u0393.\u0393.\u0394.\u0395. / \u0393.\u0393.\u03A0.\u03A3. 2014.\u03A5\u03C0\u03B7\u03C1\u03B5\u03C3\u03AF\u03B1 \"\u0392\u03B1\u03C3\u03B9\u03BA\u03AC \u03C3\u03C4\u03BF\u03B9\u03C7\u03B5\u03AF\u03B1 \u03BC\u03B7\u03C4\u03C1\u03CE\u03BF\u03C5 \u03B3\u03B9\u03B1 \u03BD\u03BF\u03BC\u03B9\u03BA\u03AC \u03C0\u03C1\u03CC\u03C3\u03C9\u03C0\u03B1, \u03BD\u03BF\u03BC\u03B9\u03BA\u03AD\u03C2 \u03BF\u03BD\u03C4\u03CC\u03C4\u03B7\u03C4\u03B5\u03C2, \u03BA\u03B1\u03B9 \u03C6\u03C5\u03C3\u03B9\u03BA\u03AC \u03C0\u03C1\u03CC\u03C3\u03C9\u03C0\u03B1 \u03BC\u03B5 \u03B5\u03B9\u03C3\u03CC\u03B4\u03B7\u03BC\u03B1 \u03B1\u03C0\u03CC \u03B5\u03C0\u03B9\u03C7\u03B5\u03B9\u03C1\u03B7\u03BC\u03B1\u03C4\u03B9\u03BA\u03AE \u03B4\u03C1\u03B1\u03C3\u03C4\u03B7\u03C1\u03B9\u03CC\u03C4\u03B7\u03C4\u03B1\u00BB \u03BC\u03B5 \u03CC\u03C1\u03B9\u03BF \u03BA\u03BB\u03AE\u03C3\u03B5\u03C9\u03BD \u03BA\u03B1\u03B9 \u03C4\u03B1\u03C5\u03C4\u03BF\u03C0\u03BF\u03AF\u03B7\u03C3\u03B7 \u03C7\u03C1\u03AE\u03C3\u03C4\u03B7.</result></m:rgWsPublicVersionInfoResponse></env:Body></env:Envelope>"
#define rgWsPublicVersionInfoResult @"Version: 3.1.0, 11/04/2014, Copyright \u0393.\u0393.\u0394.\u0395. / \u0393.\u0393.\u03A0.\u03A3. 2014.\u03A5\u03C0\u03B7\u03C1\u03B5\u03C3\u03AF\u03B1 \"\u0392\u03B1\u03C3\u03B9\u03BA\u03AC \u03C3\u03C4\u03BF\u03B9\u03C7\u03B5\u03AF\u03B1 \u03BC\u03B7\u03C4\u03C1\u03CE\u03BF\u03C5 \u03B3\u03B9\u03B1 \u03BD\u03BF\u03BC\u03B9\u03BA\u03AC \u03C0\u03C1\u03CC\u03C3\u03C9\u03C0\u03B1, \u03BD\u03BF\u03BC\u03B9\u03BA\u03AD\u03C2 \u03BF\u03BD\u03C4\u03CC\u03C4\u03B7\u03C4\u03B5\u03C2, \u03BA\u03B1\u03B9 \u03C6\u03C5\u03C3\u03B9\u03BA\u03AC \u03C0\u03C1\u03CC\u03C3\u03C9\u03C0\u03B1 \u03BC\u03B5 \u03B5\u03B9\u03C3\u03CC\u03B4\u03B7\u03BC\u03B1 \u03B1\u03C0\u03CC \u03B5\u03C0\u03B9\u03C7\u03B5\u03B9\u03C1\u03B7\u03BC\u03B1\u03C4\u03B9\u03BA\u03AE \u03B4\u03C1\u03B1\u03C3\u03C4\u03B7\u03C1\u03B9\u03CC\u03C4\u03B7\u03C4\u03B1\u00BB \u03BC\u03B5 \u03CC\u03C1\u03B9\u03BF \u03BA\u03BB\u03AE\u03C3\u03B5\u03C9\u03BD \u03BA\u03B1\u03B9 \u03C4\u03B1\u03C5\u03C4\u03BF\u03C0\u03BF\u03AF\u03B7\u03C3\u03B7 \u03C7\u03C1\u03AE\u03C3\u03C4\u03B7."

NSString *rgWsPublicAfmMethodCallForAfmXMLResponse = @"PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxlbnY6RW52ZWxvcGUgeG1sbnM6ZW52PSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy9zb2FwL2VudmVsb3BlLyIgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSI+DQogICA8ZW52OkhlYWRlciAvPg0KICAgPGVudjpCb2R5Pg0KICAgICAgPG06cmdXc1B1YmxpY0FmbU1ldGhvZFJlc3BvbnNlIHhtbG5zOm09Imh0dHA6Ly9nci9nc2lzL3Jnd3NwdWJsaWMvUmdXc1B1YmxpYy53c2RsIj4NCiAgICAgICAgIDxSZ1dzUHVibGljQmFzaWNSdF9vdXQ+DQogICAgICAgICAgICA8bTphZm0+MTIzNDU2Nzg5PC9tOmFmbT4NCiAgICAgICAgICAgIDxtOnN0b3BEYXRlIHhzaTpuaWw9InRydWUiIC8+DQogICAgICAgICAgICA8bTpwb3N0YWxBZGRyZXNzTm8+MDwvbTpwb3N0YWxBZGRyZXNzTm8+DQogICAgICAgICAgICA8bTpkb3lEZXNjcj7Okc6YzpfOnc6pzp08L206ZG95RGVzY3I+DQogICAgICAgICAgICA8bTpkb3k+MTIzPC9tOmRveT4NCiAgICAgICAgICAgIDxtOm9ub21hc2lhPs6fzp3On86czpHOo86ZzpE8L206b25vbWFzaWE+DQogICAgICAgICAgICA8bTpsZWdhbFN0YXR1c0Rlc2NyPs6RzpU8L206bGVnYWxTdGF0dXNEZXNjcj4NCiAgICAgICAgICAgIDxtOnJlZ2lzdERhdGU+MTk4OC0wMi0wM1QwMDowMDowMC4wMDArMDI6MDA8L206cmVnaXN0RGF0ZT4NCiAgICAgICAgICAgIDxtOmRlYWN0aXZhdGlvbkZsYWc+MTwvbTpkZWFjdGl2YXRpb25GbGFnPg0KICAgICAgICAgICAgPG06ZGVhY3RpdmF0aW9uRmxhZ0Rlc2NyPs6Vzp3Olc6hzpPOn86jIM6RzqbOnDwvbTpkZWFjdGl2YXRpb25GbGFnRGVzY3I+DQogICAgICAgICAgICA8bTpwb3N0YWxBZGRyZXNzPs6UzpnOlc6lzpjOpc6dzqPOlzwvbTpwb3N0YWxBZGRyZXNzPg0KICAgICAgICAgICAgPG06ZmlybUZsYWdEZXNjcj7Olc6gzpnOpM6XzpTOlc6lzpzOkc6kzpnOkc6jPC9tOmZpcm1GbGFnRGVzY3I+DQogICAgICAgICAgICA8bTpjb21tZXJUaXRsZT5BLkUuzpIuRTwvbTpjb21tZXJUaXRsZT4NCiAgICAgICAgICAgIDxtOnBvc3RhbEFyZWFEZXNjcmlwdGlvbj7Okc6YzpfOnc6RPC9tOnBvc3RhbEFyZWFEZXNjcmlwdGlvbj4NCiAgICAgICAgICAgIDxtOklOaUZsYWdEZXNjcj7OnM6XIM6mzqA8L206SU5pRmxhZ0Rlc2NyPg0KICAgICAgICAgICAgPG06cG9zdGFsWmlwQ29kZT4xMjM0NTwvbTpwb3N0YWxaaXBDb2RlPg0KICAgICAgICAgPC9SZ1dzUHVibGljQmFzaWNSdF9vdXQ+DQogICAgICAgICA8YXJyYXlPZlJnV3NQdWJsaWNGaXJtQWN0UnRfb3V0Pg0KICAgICAgICAgICAgPG06UmdXc1B1YmxpY0Zpcm1BY3RSdFVzZXI+DQogICAgICAgICAgICAgICA8bTpmaXJtQWN0RGVzY3I+zpvOmc6Rzp3Omc6azp8gzpXOnM6gzp/Ooc6Zzp8gzqbOkc6hzpzOkc6azpXOpc6kzpnOms6pzp0gzpXOmc6UzqnOnSAozqbOkc6hzpzOkc6azpXOmc6RKTwvbTpmaXJtQWN0RGVzY3I+DQogICAgICAgICAgICAgICA8bTpmaXJtQWN0S2luZD4xPC9tOmZpcm1BY3RLaW5kPg0KICAgICAgICAgICAgICAgPG06ZmlybUFjdEtpbmREZXNjcj7Oms6lzqHOmc6RPC9tOmZpcm1BY3RLaW5kRGVzY3I+DQogICAgICAgICAgICAgICA8bTpmaXJtQWN0Q29kZT40NzczMDAwMDwvbTpmaXJtQWN0Q29kZT4NCiAgICAgICAgICAgIDwvbTpSZ1dzUHVibGljRmlybUFjdFJ0VXNlcj4NCiAgICAgICAgICAgIDxtOlJnV3NQdWJsaWNGaXJtQWN0UnRVc2VyPg0KICAgICAgICAgICAgICAgPG06ZmlybUFjdERlc2NyPs6VzqDOmc6jzprOlc6lzpcgzpXOns6fzqDOm86ZzqPOnM6fzqUgzpXOoM6ZzprOn86Zzp3Oqc6dzpnOkc6jPC9tOmZpcm1BY3REZXNjcj4NCiAgICAgICAgICAgICAgIDxtOmZpcm1BY3RLaW5kPjI8L206ZmlybUFjdEtpbmQ+DQogICAgICAgICAgICAgICA8bTpmaXJtQWN0S2luZERlc2NyPs6UzpXOpc6kzpXOoc6VzqXOn86lzqPOkTwvbTpmaXJtQWN0S2luZERlc2NyPg0KICAgICAgICAgICAgICAgPG06ZmlybUFjdENvZGU+OTUxMjAwMDA8L206ZmlybUFjdENvZGU+DQogICAgICAgICAgICA8L206UmdXc1B1YmxpY0Zpcm1BY3RSdFVzZXI+DQogICAgICAgICAgICA8bTpSZ1dzUHVibGljRmlybUFjdFJ0VXNlcj4NCiAgICAgICAgICAgICAgIDxtOmZpcm1BY3REZXNjcj7OoM6pzpvOl86jzpcgzpHOpc6kzp/Oms6Zzp3Ol86kzqnOnSDOms6RzpkgzpXOm86RzqbOoc6pzp0gzpzOl86nzpHOnc6fzprOmc6dzpfOpM6pzp0gzp/Op86XzpzOkc6kzqnOnTwvbTpmaXJtQWN0RGVzY3I+DQogICAgICAgICAgICAgICA8bTpmaXJtQWN0S2luZD4yPC9tOmZpcm1BY3RLaW5kPg0KICAgICAgICAgICAgICAgPG06ZmlybUFjdEtpbmREZXNjcj7OlM6VzqXOpM6VzqHOlc6lzp/Opc6jzpE8L206ZmlybUFjdEtpbmREZXNjcj4NCiAgICAgICAgICAgICAgIDxtOmZpcm1BY3RDb2RlPjQ1MTEwMDAwPC9tOmZpcm1BY3RDb2RlPg0KICAgICAgICAgICAgPC9tOlJnV3NQdWJsaWNGaXJtQWN0UnRVc2VyPg0KICAgICAgICAgPC9hcnJheU9mUmdXc1B1YmxpY0Zpcm1BY3RSdF9vdXQ+DQogICAgICAgICA8cENhbGxTZXFJZF9vdXQ+MTIzNDU2Nzg5PC9wQ2FsbFNlcUlkX291dD4NCiAgICAgICAgIDxwRXJyb3JSZWNfb3V0Pg0KICAgICAgICAgICAgPG06ZXJyb3JEZXNjciB4c2k6bmlsPSJ0cnVlIiAvPg0KICAgICAgICAgICAgPG06ZXJyb3JDb2RlIHhzaTpuaWw9InRydWUiIC8+DQogICAgICAgICA8L3BFcnJvclJlY19vdXQ+DQogICAgICA8L206cmdXc1B1YmxpY0FmbU1ldGhvZFJlc3BvbnNlPg0KICAgPC9lbnY6Qm9keT4NCjwvZW52OkVudmVsb3BlPg==";

@interface RgWsPublicBinding_rgWsPublicVersionInfoMock : RgWsPublicBinding_rgWsPublicVersionInfo

- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

@end

@implementation RgWsPublicBinding_rgWsPublicVersionInfoMock

- (void)main
{
    [super main];
    response = [RgWsPublicBindingResponse new];
    NSString *mockedResponseString = rgWsPublicVersionInfoXMLResponse;
    responseData = [[mockedResponseString dataUsingEncoding:NSUTF8StringEncoding] mutableCopy];

    [self connectionDidFinishLoading:nil];
}

@end

@interface RgWsPublicBinding_rgWsPublicAfmMethodMocked : RgWsPublicBinding_rgWsPublicAfmMethod

- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

@end

@implementation RgWsPublicBinding_rgWsPublicAfmMethodMocked

- (void)main
{
    [super main];
    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:rgWsPublicAfmMethodCallForAfmXMLResponse options:0];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    responseData = [[decodedString dataUsingEncoding:NSUTF8StringEncoding] mutableCopy];

    [self connectionDidFinishLoading:nil];
}

@end

@interface RgWsPublicBindingMock : RgWsPublicBinding

- (RgWsPublicBindingResponse *)performSynchronousOperation:(RgWsPublicBindingOperation *)operation;
@end

@implementation RgWsPublicBindingMock

- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(RgWsPublicBindingOperation *)operation
{

}

- (RgWsPublicBindingResponse *)rgWsPublicVersionInfoUsing
{
    return [self performSynchronousOperation:[(RgWsPublicBinding_rgWsPublicVersionInfo*)[RgWsPublicBinding_rgWsPublicVersionInfoMock alloc] initWithBinding:self delegate:self]];
}

- (RgWsPublicBindingResponse *)rgWsPublicAfmMethodUsingRgWsPublicInputRt_in:(RgWsPublic_RgWsPublicInputRtUser *)aRgWsPublicInputRt_in
                                                      RgWsPublicBasicRt_out:(RgWsPublic_RgWsPublicBasicRtUser *)aRgWsPublicBasicRt_out
                                             arrayOfRgWsPublicFirmActRt_out:(RgWsPublic_RgWsPublicFirmActRtUserArray *)aArrayOfRgWsPublicFirmActRt_out
                                                             pCallSeqId_out:(NSNumber *)aPCallSeqId_out
                                                              pErrorRec_out:(RgWsPublic_GenWsErrorRtUser *)aPErrorRec_out
                                                                   username:(NSString *)aUsername
                                                                   password:(NSString *)aPassword
{

    return [self performSynchronousOperation:[(RgWsPublicBinding_rgWsPublicAfmMethod*)[RgWsPublicBinding_rgWsPublicAfmMethodMocked alloc] initWithBinding:self
                                                                                                                                                 delegate:self
                                                                                                                                RgWsPublicInputRt_in:aRgWsPublicInputRt_in
                                                                                                                               RgWsPublicBasicRt_out:aRgWsPublicBasicRt_out
                                                                                                                      arrayOfRgWsPublicFirmActRt_out:aArrayOfRgWsPublicFirmActRt_out
                                                                                                                                      pCallSeqId_out:aPCallSeqId_out
                                                                                                                                       pErrorRec_out:aPErrorRec_out
                                                                                                                                            username:aUsername
                                                                                                                                            password:aPassword]];
}

@end

@interface RgWsClientTests : XCTestCase

@end

@implementation RgWsClientTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testPublicVersionInfoResponse {
    RgWsPublicClient *client = [RgWsPublicClient clientWithUsername:@"" password:@""];
    [client setBinding:[[RgWsPublicBindingMock alloc] init]];

    [client rgWsPublicVersionInfoSuccess:^(NSString *result) {
        NSString *exceptedResult = [NSString stringWithFormat:@"%@", rgWsPublicVersionInfoResult];
        XCTAssertEqualObjects(result, exceptedResult);
        
    } failure:^(NSError *error) {
        XCTFail(@"PublicVersionInfo should return success response");
    }];
}

- (void)testPublicAfmMethodResponse {
    RgWsPublicClient *client = [RgWsPublicClient clientWithUsername:@"123" password:@"123"];
    [client setBinding:[[RgWsPublicBindingMock alloc] init]];

    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    [client
     rgWsPublicAfmMethodCallForAfm:@"123456789"
     Success:^(RgWsPublic_RgWsPublicBasicRtUser *rgWsPublicBasicRt_out,
               RgWsPublic_RgWsPublicFirmActRtUserArray *arrayOfRgWsPublicFirmActRt_out,
               NSNumber *pCallSeqId_out,
               RgWsPublic_GenWsErrorRtUser *rgWsPublic_GenWsErrorRtUser) {

         XCTAssertEqualObjects(rgWsPublicBasicRt_out.afm, @"123456789");
         XCTAssertEqualObjects(rgWsPublicBasicRt_out.doyDescr, @"ΑΘΗΝΩΝ");
         XCTAssertEqualObjects(rgWsPublicBasicRt_out.doy, @"123");
         XCTAssertEqualObjects(rgWsPublicBasicRt_out.firmFlagDescr, @"ΕΠΙΤΗΔΕΥΜΑΤΙΑΣ");
         XCTAssertEqualObjects(rgWsPublicBasicRt_out.commerTitle, @"A.E.Β.E");

         NSDateComponents *comps = [[NSDateComponents alloc] init];
         [comps setDay:3];
         [comps setMonth:2];
         [comps setYear:1988];
         [comps setTimeZone:[NSTimeZone timeZoneWithName:@"Europe/Athens"]];
         NSDate *date = [[NSCalendar currentCalendar] dateFromComponents:comps];
         XCTAssertEqualObjects(rgWsPublicBasicRt_out.registDate, date);
         XCTAssertEqualObjects(rgWsPublicBasicRt_out.INiFlagDescr, @"ΜΗ ΦΠ");

         for (RgWsPublic_RgWsPublicFirmActRtUser *user in arrayOfRgWsPublicFirmActRt_out.RgWsPublicFirmActRtUser) {
             NSLog(@"firmActDescr: %@ %@", user.firmActKindDescr, user.firmActDescr);
         }
         [expectation fulfill];
     } failure:^(NSError *error) {
         NSLog(@"%@ %@", [error class], [error localizedDescription]);
         [expectation fulfill];
     }];

    [self waitForExpectationsWithTimeout:10 handler:^(NSError *error) {
    }];
}

@end
