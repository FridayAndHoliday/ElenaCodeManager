//
//  ElenaStack.m
//  UnitTestDemo
//
//  Created by baidu on 16/6/27.
//  Copyright © 2016年 elena. All rights reserved.
//

#import "ElenaStack.h"

@interface ElenaStack()
@property (nonatomic, strong) NSMutableArray *numbers;

@end

@implementation ElenaStack

- (id)init {
    if (self = [super init]) {
        _numbers = [NSMutableArray new];
    }
    return self;
}


- (void)push:(double)num {
    [self.numbers addObject:@(num)];

}

- (double)top {
    return [[self.numbers lastObject] doubleValue];
}
@end
