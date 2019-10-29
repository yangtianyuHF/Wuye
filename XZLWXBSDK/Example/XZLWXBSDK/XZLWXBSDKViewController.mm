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

    [XZLWXBSDK initWithSDKWithToken:@"eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiLmnah0YW4iLCJhcHBsaWNhdGlvblR5cGUiOiIyIiwidW5pdERldGFpbElkIjoiMSIsImNyZWF0ZWQiOjE1NzIzNTE4MjA0NDgsImd1aWQiOiI2OSIsImVtcGxveWVlSWQiOiIxOTEzNSIsInVuaXRNYXN0ZXJJZCI6IjQzMjMiLCJleHAiOjE1Nzg5NTY2MjB9.LkjqXkU7nTXF4O0pEge29YoqXq2eUwx2MB1Y9-pO6KPy9_57g0wQ3Eam22slLp56SARpE2ExOPbazXV3nC4kSDTLuvkcWMBqj3mJEnoKQzSOCfCdxOUBdTq7gnevehSopjuJSEI70WK5HMqDfkFzIVe2FLON_pPev4YJEa0CKJl9k9nalfAQ5FVdh-Y1GsZB22RTZFKRKzNnONAGWcLV7Lrq-S0OT3d2GpNuH1pZShNWrt5fP2bgdYCVk9QAdLjoLAQyNRSUJc_iKtcyL_gP5B6kr1ACnUBakPoz8WThH-v655D3sHaPWpmKj4L_1dD289di97LzZbJZZfEACzZG2Q"];
    
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
