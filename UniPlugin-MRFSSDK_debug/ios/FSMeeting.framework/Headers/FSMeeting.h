//
//  FSMeeting.h
//  FSMeeting
//
//  Created by whyf on 2019/9/10.
//  Copyright © 2019 whyf. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for FSMeeting.
FOUNDATION_EXPORT double FSMeetingVersionNumber;

//! Project version string for FSMeeting.
FOUNDATION_EXPORT const unsigned char FSMeetingVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <FSMeeting/PublicHeader.h>

@interface FSMeeting : NSObject

/* 打印sdk 版本号 相关信息
 @return void
 */
- (void)printVersion;

/* 通过RoomID 直接进入会议室
 @param roomid 会议室ID
 @param rpwd   会议室密码 ，若有则可填入
 @param nick   昵称 可随意填，但不能为空 进入会议室后将显示
 @param ip      会议服务器ip
 @param port    会议服务端口
 @param fatherVc 宿主UIViewController
 @return void
 */
-(void)enterMeetingWithRoomid:(NSString*)roomid roomPwd:(NSString*)rpwd nickName:(NSString*) nick serverip:(NSString*)ip serverport:(NSString*)port viewCtrl:(UIViewController*)fatherVc;

/* 直接进入视频会议界面,或者会议室列表界面
 @param usrname 会议室用户名
 @param pwd     密码
 @param ip      会议服务器ip
 @param port    会议服务端口
 @param rid     （可选）会议室号 ，有则传入，没有可不传
 @param fatherVc 宿主UIViewController
 @return void
 */
-(void)enterMeetingWithUsrName:(NSString*)usrname password:(NSString*) pwd roomid:(NSString*)rid serverip:(NSString*)ip serverport:(NSString*)port viewCtrl:(UIViewController*)fatherVc ;

//是否处于视频会议界面
-(BOOL)isFSMeetingActive;

/* SDK 相关代理
 @return void
 */
- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)applicationWillResignActive:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window ;


//test
-(UIViewController*)getRootViewController;
//

@end
