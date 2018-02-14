//
//  RgWsClientSingletonTests.m
//  Tests
//
//  Created by Christos Koninis on 14/02/2018.
//  Copyright © 2018 Christos Koninis. All rights reserved.
//

#import <XCTest/XCTest.h>
@import RgWsPublicClient;

@interface RgWsClientSingletonTests : XCTestCase

@end

@implementation RgWsClientSingletonTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testUsingClientWithoutConfiguration {
    //Given we do not configure a RgWsPublicClient with username/password (with clientWithUsername:password:)
    //When we try to use the client
    //Then it should throw an Exception
    XCTAssertThrows([RgWsPublicClient sharedInstance]);
}

@end
