//
//  StackTests.m
//  UnitTestDemo
//
//  Created by baidu on 16/6/27.
//  Copyright © 2016年 elena. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ElenaStack.h"

@interface StackTests : XCTestCase

@end

@implementation StackTests

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
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void) testStackClassExsit {
    XCTAssertNotNil([ElenaStack class], @"ElenaStack class should exist.");

}
- (void)testStackObjectCanBeCreated {
    ElenaStack *stack = [ElenaStack new];
    XCTAssertNotNil(stack, @"VVStack object can be created.");
}

- (void)testPushANumberAndGetIt {
    ElenaStack *stack = [ElenaStack new];
    [stack push:4.0];
    [stack push:3.0];

    double topNumber = [stack top];
    XCTAssertEqual(topNumber, 3.0, @"VVStack should can be pushed and has that top value.");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
