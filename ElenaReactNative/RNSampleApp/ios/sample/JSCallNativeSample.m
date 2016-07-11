//
//  JSCallNativeSample.m
//  RNSampleApp
//
//  Created by baidu on 16/7/11.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "JSCallNativeSample.h"

@implementation JSCallNativeSample

RCT_EXPORT_MODULE();

/*
- (void)doSomething:(NSString *)name {
  NSLog(@"doSomething:%@",name);
}
*/


RCT_EXPORT_METHOD(doSomething:(NSString *)name)
{
  NSLog(@"doSomething:%@",name);
}

/*
- (void) printBabysName {
  NSLog(@"baby's name is %@",[self babyName]);
}
 */

- (NSString *)babyName {
  return @"elena";
}

RCT_EXPORT_METHOD(printBabysName)
{
  NSLog(@"baby's name is %@",[self babyName]);
}

@end
