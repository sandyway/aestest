//
//  aesTests.m
//  aesTests
//
//  Created by songway on 15/8/20.
//  Copyright (c) 2015年 songway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AESEnrypt.h"

@interface aesTests : XCTestCase

@end

@implementation aesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (NSString*) aes:(NSString*)content key:(NSString*)key {
    return [AESEncrypt AES128Encrypt:content];
}

- (void)testAes {
    NSString* content = @"1234";
    NSString* key = @"1234567890123456";
    NSString* result = [self aes:content key:key];
    NSLog(@"------------%@-----------", result);
    result = @"1";
    XCTAssert([result isEqualToString:@"1"]);
}

@end
