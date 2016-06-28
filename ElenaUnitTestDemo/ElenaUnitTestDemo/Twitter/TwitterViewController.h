//
//  TwitterViewController.h
//  ElenaUnitTestDemo
//
//  Created by baidu on 16/6/28.
//  Copyright © 2016年 elena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwitterConnection.h"
#import "TwitterView.h"

@interface TwitterViewController : UIViewController

@property(nonatomic, strong)TwitterConnection *connection;
@property(nonatomic, strong)TwitterView  *twitterView;

- (void)updateTweetView;

@end
