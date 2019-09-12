//
//  XZLWXBSDKViewController.m
//  XZLWXBSDK
//
//  Created by 杨天宇 on 09/12/2019.
//  Copyright (c) 2019 杨天宇. All rights reserved.
//

#import "XZLWXBSDKViewController.h"
#import <XZLWXBSDK/XZLWXBSDK.h>

@interface XZLWXBSDKViewController ()

@end

@implementation XZLWXBSDKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];

    [XZLWXBSDK initWithSDKWithToken:@"eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiLmnah0YW4iLCJhcHBsaWNhdGlvblR5cGUiOiIyIiwidW5pdERldGFpbElkIjoiMSIsImNyZWF0ZWQiOjE1NjgyODIwOTE5MjYsImd1aWQiOiI2OSIsImVtcGxveWVlSWQiOiIxOTEzNSIsInVuaXRNYXN0ZXJJZCI6IjQzMjMiLCJleHAiOjE1NzQ4ODY4OTF9.mYMispmyooBSM8qeGqDac7iL2GypNA0V5IosB06GVoi1fdIsVrcoSErXfwjcLYUWTAV2j7AqnMWwR5iLOOEkjt2-vo_qvextH0I2ekhuXHKqFsQVhC4yczGqdIOjHide-H4PzRtiPNvntG5kCwj7c7iU-OrYsY5leQG8UqCbrT6s5YIsJxAWRYw7bjvUJ63NR7FezZSn8sblyK2l8mUK3AfEP6FiEhAJ07ZqsF5Iala-yBA5UX7fQIZHvdYf_kqSyaFso-xYThR9p4iwuidm6Mjmu9Auosp5BRdFwhQeixsg2QwwYzzxNua15BgpdfCoWrxlb0TVJz8hKxx1o1aZmQ"];
    
    UIButton *clickButton = [UIButton buttonWithType:UIButtonTypeCustom];
    clickButton.frame = CGRectMake(100,100 , 100, 100);
    clickButton.backgroundColor = [UIColor redColor];
    [clickButton addTarget:self action:@selector(goWeex) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickButton];
}

- (void)goWeex {
    __weak typeof(self) weakself = self;
    [XZLWXBSDK getTargetVCWithViewType:XZLWXBSDKViewTypeWuyeGongGao success:^(UIViewController *targetVC) {
        [weakself.navigationController pushViewController:targetVC animated:YES];
    } failed:^(NSString *errorMessage) {
        NSLog(@"%@",errorMessage);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
