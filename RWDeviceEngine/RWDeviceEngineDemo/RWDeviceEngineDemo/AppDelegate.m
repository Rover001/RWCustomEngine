//
//  AppDelegate.m
//  RWDeviceEngineDemo
//
//  Created by 曾云 on 2019/11/2.
//  Copyright © 2019 曾云. All rights reserved.
//

#import "AppDelegate.h"

@import DeviceEngine.CustomDevice;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /* 🐱 设置App定向样式  IOS13之下 */
    [CustomDevice defaultCustomDeviceOrientationStyle:CustomDeviceOrientationStyle_Auto];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options  API_AVAILABLE(ios(13.0)){
    /* 🐱 设置App定向样式  IOS13以上 */
    [CustomDevice defaultCustomDeviceOrientationStyle:CustomDeviceOrientationStyle_Auto];
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions  API_AVAILABLE(ios(13.0)){
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
