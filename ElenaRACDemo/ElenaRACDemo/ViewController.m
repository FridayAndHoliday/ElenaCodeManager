//
//  ViewController.m
//  ElenaRACDemo
//
//  Created by baidu on 16/6/27.
//  Copyright © 2016年 elena. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCloseButton];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setupCloseButton {
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    closeButton.frame = CGRectMake(0, 280, self.view.frame.size.width, 50);
    [closeButton setTitle:@"关闭此界面" forState:UIControlStateNormal];
    closeButton.backgroundColor = [UIColor greenColor];
    [closeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:closeButton];

    @weakify(self)
    [[closeButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        @strongify(self); // 局域定义了一个__strong的self指针指向self_weak
        NSLog(@"关闭按钮被点击了");
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
