//
//  SimpleStringSpec.m
//  ElenaUnitTestDemo
//
//  Created by baidu on 16/6/28.
//  Copyright © 2016年 elena. All rights reserved.
//

#import <Kiwi/Kiwi.h>

SPEC_BEGIN(SimpleStringSpec)

describe(@"SimpleString", ^{
    context(@"when assigned to 'Hello world'", ^{
        NSString *greeting = @"Hello world";
        it(@"should exist", ^{
            [[greeting shouldNot] beNil];
        });
        
        it(@"should equal to 'Hello world'", ^{
            [[greeting should] equal:@"Hello world"];
        });
    });
});

SPEC_END
