# CustomEngine 自定义管理类 

使用CocoaPods导入 `pod 'CustomEngine', '~> 0.1.2'`

## DeviceEngine.framework IOS设备管理类
在使用的文件中导入头文件 ```#import <DeviceEngine/DeviceEngine.h>```

CustomDevice是一个单例类
- 使用 ```[CustomDevice defaultCustomDevice]```初始化
- 使用宏定义 ```#define CustomDeviceEngine [CustomDevice defaultCustomDevice]```

### 设备类型判断
```
- (BOOL)isSimulator;/*🐱 是否是模拟器 */
- (BOOL)isPad;/*🐱 是否是Pad */
- (BOOL)isiPhone;/*🐱 是否是手机 */
- (BOOL)isPodTouch;/*🐱 是否是Touch */
- (BOOL)isAppleTV;/*🐱 是否是电视TV */
- (BOOL)isCarolay;
```
### 真机类型判断 
#### iPhone类型判断、iPodTouch类型判断
```
- (BOOL)iPhone;
- (BOOL)iPhone3G;
- (BOOL)iPhone3GS;
- (BOOL)iPhone4;
- (BOOL)iPhone4S;
- (BOOL)iPhone5;
- (BOOL)iPhone5C;
- (BOOL)iPhone5S;
- (BOOL)iPhoneSE;
- (BOOL)iPhone6;
- (BOOL)iPhone6Plus;
- (BOOL)iPhone6S;
- (BOOL)iPhone6SPlus;
- (BOOL)iPhone7;
- (BOOL)iPhone7Plus;
- (BOOL)iPhone8;
- (BOOL)iPhone8Plus;
- (BOOL)iPhoneX;
- (BOOL)iPhoneXR;
- (BOOL)iPhoneXS;
- (BOOL)iPhoneXSMAX;
- (BOOL)iPhone11;
- (BOOL)iPhone11Pro;
- (BOOL)iPhone11ProMax;
- (BOOL)iPodTouch;
- (BOOL)iPodTouch2;
- (BOOL)iPodTouch3;
- (BOOL)iPodTouch4;
- (BOOL)iPodTouch5;
- (BOOL)iPodTouch6;
- (BOOL)iPodTouch7;
```
#### iPad类型判断
```
- (BOOL)iPad;
- (BOOL)iPad2;
- (BOOL)iPad3;
- (BOOL)iPad4;
- (BOOL)iPad5;
- (BOOL)iPad6;
- (BOOL)iPadAir;
- (BOOL)iPadAir2;
- (BOOL)iPadAir3;
- (BOOL)iPadPro129;
- (BOOL)iPadPro129_2;
- (BOOL)iPadPro129_3;
- (BOOL)iPadPro97;
- (BOOL)iPadPro105;
- (BOOL)iPadPro11;
- (BOOL)iPadMini;
- (BOOL)iPadMini2;
- (BOOL)iPadMini3;
- (BOOL)iPadMini4;
- (BOOL)iPadMini5;
```







