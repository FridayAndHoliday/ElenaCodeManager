//
//  TwitterViewController.m
//  ElenaUnitTestDemo
//
//  Created by baidu on 16/6/28.
//  Copyright © 2016年 elena. All rights reserved.
//

#import "TwitterViewController.h"


@interface TwitterViewController ()

@end

@implementation TwitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateTweetView {
    
    NSArray *twitters = [_connection fetchTweets];
    if (twitters != nil) {
        for (Twitter *t in twitters){
            [_twitterView addTweet:t];
        }
    } else {
        /* handle error cases */
    }
}

@end
