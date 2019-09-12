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

    [XZLWXBSDK initWithSDKWithToken:@"eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiLmnah0YW4iLCJhcHBsaWNhdGlvblR5cGUiOiIyIiwidW5pdERldGFpbElkIjoiMSIsImNyZWF0ZWQiOjE1NjgyODQwNDc1NDUsImd1aWQiOiI2OSIsImVtcGxveWVlSWQiOiIxOTEzNSIsInVuaXRNYXN0ZXJJZCI6IjQzMjMiLCJleHAiOjE1NzQ4ODg4NDd9.JPFk64NwMRmM0Sd1b4P-ioc_9wxHR1VX57lCIf_9FAnt5HfsP7R5oSWftEsFM1fthsnWz1kYilRde3sM9cwn8vlEB2Qr_rirCol6yvcaoSoP8XDVH3UQscJx7HjnS34T7OgLuiBZ6uE-TDMulKWqDZTsiZFPELiUyD16tXRptVuYoon5vuUSvFdgSaBaR0JGdrEjfeMpz4nv5jaK1JBj7Xy5qOZ7J1ksrx9YvLnOqEFPQYsL47qk_zaGQAeMce5PjgnbL3_aO5tDTLMAUSmANMIDh3PBUh9cyoKvTD9M1bQkZTQFZaJtBC6APPvagC3h-PpfhCL_UPF4XZHo6q4vTw"];
    
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
