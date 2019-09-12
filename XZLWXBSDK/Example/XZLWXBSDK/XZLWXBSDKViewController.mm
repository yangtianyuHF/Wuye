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

    [XZLWXBSDK initWithSDKWithToken:@"eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiLmnajlpKnlrociLCJhcHBsaWNhdGlvblR5cGUiOiIyIiwidW5pdERldGFpbElkIjoiMSIsImNyZWF0ZWQiOjE1NjgyNzI1MjU4ODEsImd1aWQiOiI1OTQ5IiwiZW1wbG95ZWVJZCI6IjUyMTkiLCJ1bml0TWFzdGVySWQiOiIxOTgiLCJleHAiOjE1NzQ4NzczMjV9.f6Gb_lwl-Wm89MucMu3EnBg8I7A8J-PKF8gMkO6JeizA1OaC-rY-BTaIzb_QfRegj_MJJtw-_Xkuo6Tqi37F6-PjtG8FiZ_uth7Xmb8I53hcC5AiLuWQvdm9oTNhWKPQ2BnON1pfeiwRbeLvMvaBZk_GC3p0lLg3Hn63rQzVYciKI8-EZAptbN7HvBL7WnXqW7AxCbD7xhdE6FR_rdsvNpCmraR7_rstqlTEFp2TQORzIg4gZvO59m-kIsYJO-hguXcUMRxdqXKNKuv-WAAxhZuo67HtP3a5p_ohrGDrNwW06XnHbPjwC2gM9GroC4xUxe7gCH6T-nV2AArNFJzFvQ"];
    
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
