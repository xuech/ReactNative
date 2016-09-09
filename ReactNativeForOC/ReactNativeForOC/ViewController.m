//
//  ViewController.m
//  ReactNativeForOC
//
//  Created by xuech on 16/9/9.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

#import "ViewController.h"
#import <RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * strUrl = @"http://localHost:8081/index.ios.bundle?platform=ios&dev=true";
    NSURL * jsCodeLocation = [NSURL URLWithString:strUrl];
    
    /**
     参数一：加载页面的地址可以理解为（热更新链接）
     参数二：项目名称
     :returns:
     */
    RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                         moduleName:@"ReactNativeForOC"
                                                  initialProperties:nil
                                                      launchOptions:nil];
    rootView.frame = CGRectMake(0, 64, self.view.frame.size.width, 200);
    [self.view addSubview:rootView];
}


@end
