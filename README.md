# CustomEngine 自定义管理类 

![podversion](https://img.shields.io/cocoapods/v/CustomEngine.svg)

使用CocoaPods导入 `pod 'CustomEngine'`

## DeviceEngine.framework IOS设备管理类 包含CustomDevice单例类
两种方式导入头文件(三选一) 
- ```#import <DeviceEngine/DeviceEngine.h>```
- ```#import <DeviceEngine/CustomDevice.h>```
- ```@import DeviceEngine.CustomDevice``` 

CustomDevice是一个单例类

- 在AppDelegate中设置App定向样式  
    - IOS_13以下 在  '- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions' 方法中 设定App定向样式
    - IOS_13以上 '- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options  API_AVAILABLE(ios(13.0))' 方法中 设定App定向样式
        - ```[CustomDevice defaultCustomDevice]```
        - ```[CustomDevice defaultCustomDeviceOrientationStyle:<#CustomDeviceOrientationStyle#>];```

### CustomDevice单例类  

- 设备类型判断: `- (BOOL)isSimulator 是否是模拟器` `- (BOOL)isiPhone  是否是手机` `等等`
- 真机类型判断:
  - iPhone 类型: `- (BOOL)iPhone4S` `- (BOOL)iPhone11ProMax` `等等` 
  - iPodTouch 类型: `- (BOOL)iPodTouch3` `- (BOOL)iPodTouch7` `等等` 
  - iPad 类型: `- (BOOL)iPadMini5` `- (BOOL)iPadPro129_3` `等等` 
- 开发尺寸类型判断 `支持真机、模拟器`:
  - iPhone 类型: `- (BOOL)iPhone_320_480` `- (BOOL)iPhone_414_896` `等等` 
  - iPad 类型: `- (BOOL)ipad_768_1024` `- (BOOL)ipad_1024_1136` `等等` 
- 其他类型判断:`- (CGFloat)deviceNavigationBarHeight` `- (CGFloat)deviceSafeAreaBottomHeight` `等等`

[CustomDevice更多详情](https://github.com/Rover001/CustomEngine/blob/master/DeviceEngine.md)  `DeviceEngine.md`






