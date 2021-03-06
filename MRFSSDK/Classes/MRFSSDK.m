//
//  MRFSSDK.m
//  MRFSSDK
//
//  Created by mccree on 2021/3/9.
//

#import "MRFSSDK.h"
#import <FSMeeting/FSMeeting.h>

@interface MRFSSDK()
@property(nonatomic, strong) FSMeeting *fsMeeting;
@end

@implementation MRFSSDK

UNI_EXPORT_METHOD(@selector(configFSMeeting))
UNI_EXPORT_METHOD(@selector(joinFSMeeting:))

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static MRFSSDK *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

- (void)configFSMeeting{
    NSLog(@"%s 初始化成功",__func__);
    self.fsMeeting = [[FSMeeting alloc] init];
    UIApplication *app = [UIApplication sharedApplication];
    [self.fsMeeting application:app didFinishLaunchingWithOptions:nil];
}

- (void)joinFSMeeting:(NSDictionary *)param{
    NSLog(@"%s 加入会议",__func__);
    NSString *roomId = param[@"roomId"];
    NSString *roomPwd = param[@"roomPwd"];
    NSString *nickName = param[@"nickName"];
    NSString *serverIp = param[@"serverIp"];
    NSString *port = param[@"port"];
    [self.fsMeeting enterMeetingWithRoomid:roomId roomPwd:roomPwd nickName:nickName serverip:serverIp serverport:port viewCtrl:[MRFSSDK rootViewController]];
}

+ (UIViewController *)rootViewController {
    __block UIWindow *normalWindow = [[UIApplication sharedApplication] keyWindow];
    NSArray *windows = [[UIApplication sharedApplication] windows];
    if (normalWindow.windowLevel != UIWindowLevelNormal) {
        [windows enumerateObjectsUsingBlock:^(__kindof UIWindow * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (obj.windowLevel == UIWindowLevelNormal) {
                normalWindow = obj;
                *stop        = YES;
            }
        }];
    }
    
    return [self cpx_getTopViewController:normalWindow.rootViewController];
}

+ (UIViewController *)cpx_getTopViewController:(UIViewController *)inViewController {
    while (inViewController.presentedViewController) {
        inViewController = inViewController.presentedViewController;
    }
    
    if ([inViewController isKindOfClass:[UITabBarController class]]) {
        UIViewController *selectedVC = [self cpx_getTopViewController:((UITabBarController *)inViewController).selectedViewController];
        return selectedVC;
    } else if ([inViewController isKindOfClass:[UINavigationController class]]) {
        UIViewController *selectedVC = [self cpx_getTopViewController:((UINavigationController *)inViewController).visibleViewController];
        return selectedVC;
    } else {
        return inViewController;
    }
}


@end
