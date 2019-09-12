//
//  XZLWXBSDK.h
//  AFNetworking
//
//  Created by 杨天宇 on 2019/9/12.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSInteger {
    XZLWXBSDKViewTypeWuyeGongGao = 0,//物业公告
} XZLWXBSDKViewType;


@interface XZLWXBSDK : NSObject

//MARK: - 初始化SDK
+(void)initWithSDKWithToken:(NSString *)token;

//MARK: - 进入相应的模块，成功返回对应的vc,失败返回错误
+(void)getTargetVCWithViewType:(XZLWXBSDKViewType)type success:(void(^)(UIViewController *targetVC))success failed:(void(^)(NSString *errorMessage))failed;

//MARK: - 清除缓存
+(void)clearSDKData;

@end
