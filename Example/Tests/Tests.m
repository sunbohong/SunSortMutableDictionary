//
//  SunSortMutableDictionaryTests.m
//  SunSortMutableDictionaryTests
//
//  Created by sunbohong on 09/21/2016.
//  Copyright (c) 2016 sunbohong. All rights reserved.
//

@import XCTest;

#include <SunSortMutableDictionary/SunSortMutableDictionary.h>

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAsc
{
    SunSortMutableDictionary *dic = [SunSortMutableDictionary new];
    dic.comparator = ^(NSString* obj1,NSString* obj2){
        return  [obj1 compare: obj2];
    };

    dic[@"a"]  = @"a";
    dic[@"c"]  = @"c";
    dic[@"e"]  = @"e";
    NSData *data=[NSJSONSerialization dataWithJSONObject:dic options:0 error:NULL];
    NSString *str=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    XCTAssert([str isEqualToString:@"{\"a\":\"a\",\"c\":\"c\",\"e\":\"e\"}"]);
}


- (void)testDesc
{
    SunSortMutableDictionary *dic = [SunSortMutableDictionary new];
    dic.comparator = ^(NSString* obj1,NSString* obj2){
        return  0 - [obj1 compare: obj2];
    };

    dic[@"a"]  = @"a";
    dic[@"c"]  = @"c";
    dic[@"e"]  = @"e";
    NSData *data=[NSJSONSerialization dataWithJSONObject:dic options:0 error:NULL];
    NSString *str=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    XCTAssert([str isEqualToString:@"{\"e\":\"e\",\"c\":\"c\",\"a\":\"a\"}"]);
}

@end

