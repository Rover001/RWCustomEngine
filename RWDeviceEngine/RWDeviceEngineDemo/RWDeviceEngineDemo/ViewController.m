//
//  ViewController.m
//  RWDeviceEngineDemo
//
//  Created by 曾云 on 2019/11/2.
//  Copyright © 2019 曾云. All rights reserved.
//

#import "ViewController.h"

@import DeviceEngine.CustomDevice;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self deviceEnginelog];
}

- (void)deviceEnginelog {
    NSLog(@"--- 设置定向样式 --- ");
    NSLog(@"orientationStyle :%ld",CustomDeviceEngine.orientationStyle);
    NSLog(@"--- 获取竖屏样式 其他类型值 Portrait --- ");
    NSLog(@"deviceStatusBarHeight=%f  \ndeviceNavigationBarHeight = %f \ndeviceSafeAreaBottomHeight = %f",[CustomDevice dealWithSeparatePortrait].deviceStatusBarHeight,[CustomDevice dealWithSeparatePortrait].deviceNavigationBarHeight,[CustomDevice dealWithSeparatePortrait].deviceSafeAreaBottomHeight);
    NSLog(@"--- 获取横屏样式 其他类型值 Landscape--- ");
    NSLog(@"deviceStatusBarHeight=%f  \ndeviceNavigationBarHeight = %f \ndeviceSafeAreaBottomHeight = %f",[CustomDevice dealWithSeparateLandscape].deviceStatusBarHeight,[CustomDevice dealWithSeparateLandscape].deviceNavigationBarHeight,[CustomDevice dealWithSeparateLandscape].deviceSafeAreaBottomHeight);
   
    NSLog(@"--- 获取竖屏样式 其他类型值 --- ");
    NSLog(@"orientationStyle :%ld",CustomDeviceEngine.orientationStyle);
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    CustomDeviceEngine.deviceAutorotateBlock = ^{
        [self orientationDidChange:nil];
    };
}

- (void)orientationDidChange:(NSNotification *)notification {
   
    [self deviceEnginelog];
}



@end
