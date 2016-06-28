//
//  PersonMockTests.m
//  ElenaUnitTestDemo
//
//  Created by baidu on 16/6/28.
//  Copyright © 2016年 elena. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "Person.h"

@interface PersonMockTests : XCTestCase

@end

@implementation PersonMockTests

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

//最简单的一个使用OCMock的例子
- (void)testPersonNameEqual {
    
    Person *person = [[Person alloc] init];
    
    //创建一个mock对象
    id mockClass = OCMClassMock([Person class]);
    //可以给这个mock对象的方法设置预设的参数和返回值
    OCMStub([mockClass getPersonName]).andReturn(@"elena");
    
    //用这个预设的值和实际的值进行比较是否相等
    XCTAssertEqualObjects([mockClass getPersonName], [person getPersonName], @"值相等");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
