//
//  TwitterMockTests.m
//  ElenaUnitTestDemo
//
//  Created by baidu on 16/6/28.
//  Copyright © 2016年 elena. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "TwitterViewController.h"
#import "TwitterConnection.h"
#import "Twitter.h"
#import "TwitterView.h"

@interface TwitterMockTests : XCTestCase

@end

@implementation TwitterMockTests

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

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testDisplaysTweetsRetrievedFromConnection {
    
    TwitterViewController *controller = [[TwitterViewController alloc] init];
    
    //模拟出来一个网络连接请求数据的类
    id mockConnection = OCMClassMock([TwitterConnection class]);
    controller.connection = mockConnection;
    
    //模拟fetchTweets方法返回预设值
    Twitter *testTweet = [[Twitter alloc] init];
    testTweet.userName = @"齐天大圣";
    Twitter *testTweet2 = [[Twitter alloc] init];
    testTweet2.userName = @"美猴王";
    NSArray *tweetArray = @[testTweet,testTweet2];
    OCMStub([mockConnection fetchTweets]).andReturn(tweetArray);

    
    //模拟出来一个view类
    id mockView = OCMClassMock([TwitterView class]);
    controller.twitterView = mockView;
    
    //这里执行updateTweetView之后，[mockView addTweet:]加入了testTweet和testTweet2
    [controller updateTweetView];
    
    
    //验证是否执行了fetchTweets方法
    OCMVerify([mockConnection fetchTweets]);
    
    //---------验证使用对应参数的方法是否被调用-----------
    
    //成功
    OCMVerify([mockView addTweet:testTweet]);
    OCMVerify([mockView addTweet:testTweet2]);
    OCMVerify([mockView addTweet:[OCMArg any]]);   ///[OCMArg any]匹配所有的参数值，既testTweet和testTweet2
    
    
//    //失败，因为执行[controller updateTweetView];的时候，mockView没有添加testTweet3，所以验证不通过
//    Twitter *testTweet3 = [[Twitter alloc] init];
//    testTweet3.userName = @"斗战胜佛";
//    OCMVerify([mockView addTweet:testTweet3]);
}


//例子3
- (void)testStrictMock3 {
    
//    id classMock = OCMClassMock([TwitterView class]);
//    //这个classMock需要执行addTweet方法且参数不为nil。  不然的话会抛出异常
//    OCMExpect([classMock addTweet:[OCMArg isNotNil]]);
//    OCMStub([classMock addTweet:[OCMArg isNotNil]]);
//    
//    /* 如果不执行以下代码的话会抛出异常 */
//    Twitter *testTweet = [[Twitter alloc] init];
//    testTweet.userName = @"齐滇大圣";
//    [classMock addTweet:testTweet];
//    
//    OCMVerifyAll(classMock);
    
    
    /*-----------------------*/
    id classMock = OCMStrictClassMock([TwitterView class]);
    OCMExpect([classMock addTweet:[OCMArg isNotNil]]);
    //OCMStub([classMock addTweet:[OCMArg isNotNil]]);

    Twitter *testTweet = [[Twitter alloc] init];
    testTweet.userName = @"齐滇大圣";
    [classMock addTweet:testTweet]; // this will throw an exception

   // OCMVerifyAll(classMock);
}

@end
