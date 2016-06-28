//
//  ViewController.m
//  ElenaCode
//
//  Created by baidu on 16/6/27.
//  Copyright © 2016年 elena. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showNetworkImage];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)showNetworkImage
{
    //使用AFNetworking显示一个网络图片
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:imageView];
    imageView.backgroundColor = [UIColor clearColor];
    NSURL *url = [NSURL URLWithString:@"http://img04.tooopen.com/images/20130701/tooopen_20083555.jpg"];
    [imageView setImageWithURL:url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
