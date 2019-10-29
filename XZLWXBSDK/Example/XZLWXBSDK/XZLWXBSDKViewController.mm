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

    [XZLWXBSDK initWithSDKWithToken:@"eyJhbGciOiJSUzUxMiJ9.eyJzdWIiOiLmnajlpKnlrociLCJhcHBsaWNhdGlvblR5cGUiOiIyIiwidW5pdERldGFpbElkIjoiMiIsImNyZWF0ZWQiOjE1NzIzNDMwMjI3NzUsImd1aWQiOiI1OTQ5IiwiZW1wbG95ZWVJZCI6Ijg2MDkiLCJ1bml0TWFzdGVySWQiOiIxOTkiLCJleHAiOjE1Nzg5NDc4MjJ9.OKINKjqNLLGGYlst7aKv5YpGAzkWAvT5PncmK52T8OjqZIIw_aSUdMzbxj5PfDY1dsZgKYo7s3oMB4sZdfi6BydQr6PxbNBqJoiIOoSxDEJHrTocu89M_uB37liFWml8BFfHDhLbbp_wB6UCmngvifPm0dJLFU12OHjkcKhI3EbAXA6ONm8qTxu5HcNuEzDRYE6BCJIcozdH6DkjQUBFQhGMy4HQR1KhFamiumpB2fJjW9Q2GMbc4oqiRMg5GHQ9WMCip5bK5b4TnuwQgjEezVdCvU8cyXRfrt0ZZP6-GEEzRdlL4zlOUj_R3wH40gmT95XbrtiiiHwPT0J-W8IvQw"];
    
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
