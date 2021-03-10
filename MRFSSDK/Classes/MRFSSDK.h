//
//  MRFSSDK.h
//  MRFSSDK
//
//  Created by mccree on 2021/3/9.
//

#import <Foundation/Foundation.h>
#import "DCUni/DCUniModule.h"

NS_ASSUME_NONNULL_BEGIN

@interface MRFSSDK : DCUniModule

+ (instancetype)sharedInstance;

/// 初始化
- (void)configFSMeeting;

/// 加入会议室
/// @param param 参数
- (void)joinMeeting:(NSDictionary *)param;

/// 获取当前控制器
+ (UIViewController *)rootViewController;

@end

NS_ASSUME_NONNULL_END
