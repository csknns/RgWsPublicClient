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

@interface RgWsPublicBinding_rgWsPublicVersionInfoMock : RgWsPublicBinding_rgWsPublicVersionInfo
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

@end

@implementation RgWsPublicBinding_rgWsPublicVersionInfoMock

- (void)main
{
    response = [RgWsPublicBindingResponse new];
    NSString *mockedResponseString = rgWsPublicVersionInfoXMLResponse;
    responseData = [[mockedResponseString dataUsingEncoding:NSUTF8StringEncoding] mutableCopy];

    [self connectionDidFinishLoading:nil];
}

@end

@interface RgWsPublicBindingMock : RgWsPublicBinding

- (RgWsPublicBindingResponse *)performSynchronousOperation:(RgWsPublicBindingOperation *)operation;
@end

@implementation RgWsPublicBindingMock

- (RgWsPublicBindingResponse *)rgWsPublicVersionInfoUsing
{
    return [self performSynchronousOperation:[(RgWsPublicBinding_rgWsPublicVersionInfo*)[RgWsPublicBinding_rgWsPublicVersionInfoMock alloc] initWithBinding:self delegate:self]];
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
    NSString *exceptedResult = [NSString stringWithFormat:@"%@", rgWsPublicVersionInfoResult];
    RgWsPublicBinding *binding = [[RgWsPublicBindingMock alloc] init];
    RgWsPublicBindingResponse *response = [binding rgWsPublicVersionInfoUsing];

    NSString *result = (NSString *)[response.bodyParts firstObject];

    XCTAssertEqualObjects(result, exceptedResult);
}

@end
