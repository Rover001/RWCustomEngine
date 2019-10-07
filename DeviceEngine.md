# DeviceEngine.framework IOS设备管理类

两种方式导入头文件 
- ```#import <DeviceEngine/DeviceEngine.h>```
- ```#import <DeviceEngine/CustomDevice.h>```

CustomDevice是一个单例类

- 使用 ```[CustomDevice defaultCustomDevice]```初始化
- 使用宏定义 ```#define CustomDeviceEngine [CustomDevice defaultCustomDevice]```

## CustomDevice单例类  
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
### 开发尺寸类型判断 支持真机、模拟器
#### iPhone开发尺寸类型判断
```
- (BOOL)iPhone_320_480;
/**<🐱iPhone_320_480 开发尺寸，包含设备类型 （iphone类型）
 - (BOOL)iPhone;
 - (BOOL)iPhone3G;
 - (BOOL)iPhone3GS;
 - (BOOL)iPhone4;
 - (BOOL)iPhone4S;
 - (BOOL)iPodTouch;
 - (BOOL)iPodTouch2;
 - (BOOL)iPodTouch3;
 - (BOOL)iPodTouch4;
 
 统一名称：- (BOOL)isiPhone4s;
*/

- (BOOL)iPhone_320_568;
/**<🐱
 iPhone_320_568 开发尺寸，包含设备类型 （iphone类型）
 - (BOOL)iPhone5;
 - (BOOL)iPhone5C;
 - (BOOL)iPhone5S;
 - (BOOL)iPhoneSE;
 - (BOOL)iPodTouch5;
 - (BOOL)iPodTouch6;
 - (BOOL)iPodTouch7;
 
  统一名称：- (BOOL)isiPhone5;
 */

- (BOOL)iPhone_375_667;
/**<🐱
 iPhone_375_667 开发尺寸，包含设备类型 （iphone类型）
 - (BOOL)iPhone6;
 - (BOOL)iPhone6S;
 - (BOOL)iPhone7;
 - (BOOL)iPhone8;
 
  统一名称：- (BOOL)isiPhone6;
 */

- (BOOL)iPhone_414_736;
/**<🐱
 iPhone_414_736 开发尺寸，包含设备类型 （iphone类型）
包含设备类型 （iphone类型）
 - (BOOL)iPhone6Plus;
 - (BOOL)iPhone6SPlus;
 - (BOOL)iPhone7Plus;
 - (BOOL)iPhone8Plus;
 
  统一名称：- (BOOL)isiPhonePlus;
 */

- (BOOL)iPhone_375_812;
/**<🐱
 iPhone_375_812 开发尺寸，包含设备类型 （iphone类型）
 - (BOOL)iPhoneX;
 - (BOOL)iPhoneXS;
 - (BOOL)iPhone11Pro;
 
  统一名称：- (BOOL)isiPhoneX;
 */

- (BOOL)iPhone_414_896;
/**<🐱
 iPhone_414_896 开发尺寸，包含设备类型 （iphone类型）
 - (BOOL)iPhoneXR;
 - (BOOL)iPhoneXSMAX;
 - (BOOL)iPhone11;
 - (BOOL)iPhone11ProMax;
 
  统一名称：- (BOOL)isiPhoneXPlus;
 */


- (BOOL)isiPhone4s;
- (BOOL)isiPhone5;
- (BOOL)isiPhone6;
- (BOOL)isiPhonePlus;
- (BOOL)isiPhoneX DEPRECATED_MSG_ATTRIBUTE("Please use isiPhoneFullScreen");
- (BOOL)isiPhoneXPlus DEPRECATED_MSG_ATTRIBUTE("Please use isiPhoneFullScreenPlus");
- (BOOL)isiPhoneFullScreen;
- (BOOL)isiPhoneFullScreenPlus;

- (BOOL)iPhone_FullScreen;/*🐱 手机是否是全面屏 isiPhoneFullScreen isiPhoneFullScreen */
- (BOOL)iPhone_Plus;/*🐱 手机是否是Plus机型 isiPhonePlus  isiPhoneFullScreenPlus */
```

#### iPad开发尺寸类型判断
```
- (BOOL)ipad_768_1024;
/**<🐱
 ipad_768_1024 开发尺寸，包含设备类型 （ipad类型）
 - (BOOL)iPad;
 - (BOOL)iPad2;
 - (BOOL)iPad3;
 - (BOOL)iPad4;
 - (BOOL)iPad5;
 - (BOOL)iPad6;
 - (BOOL)iPadAir;
 - (BOOL)iPadAir2;
 - (BOOL)iPadPro97;
 - (BOOL)iPadMini;
 - (BOOL)iPadMini2;
 - (BOOL)iPadMini3;
 - (BOOL)iPadMini4;
 - (BOOL)iPadMini5;
 
 统一名称：- (BOOL)isiPadMini;
 */

- (BOOL)ipad_834_1112;
/**<🐱
 ipad_834_1112 开发尺寸，包含设备类型 （ipad类型）
 - (BOOL)iPadAir3;
 - (BOOL)iPadPro105;
 
 统一名称：- (BOOL)isiPadPro105;
 */

- (BOOL)ipad_834_1194;
/**<🐱
 ipad_834_1194 开发尺寸，包含设备类型 （ipad类型）
 - (BOOL)iPadPro11;
 
 统一名称：- (BOOL)isiPadPro11;
 */

- (BOOL)ipad_1024_1136;
/**<🐱
 ipad_1024_1136 开发尺寸，包含设备类型 （ipad类型）
 - (BOOL)iPadPro129;
 - (BOOL)iPadPro129_2;
 - (BOOL)iPadPro129_3;
 
 统一名称：- (BOOL)isiPadPro129;
 */

- (BOOL)isiPadMini;
- (BOOL)isiPadPro105;
- (BOOL)isiPadPro11;
- (BOOL)isiPadPro129;

- (BOOL)iPad_FullScreen;/**<🐱ipad是否是全面屏 isiPadPro11 iPadPro129_3 */

```

### 其他类型判断 支持真机、模拟器
```
- (UIDeviceOrientation)deviceOrientation;/**<🐱 设备硬件旋转方向 */
- (BOOL)deviceIsPortrait;/**< 🐱 设备是否是竖屏 */
- (BOOL)deviceIsLandscape;/**< 🐱 设备是否是横屏 */
- (UIInterfaceOrientation)interfaceOrientation;/**<🐱 程序界面的当前旋转方向 */
- (BOOL)interfaceIsPortrait;/**<🐱 程序是否是竖屏 */
- (BOOL)interfaceIsLandscape;/**<🐱 程序是否是横屏 */


- (CGFloat)deviceHeight;/**<🐱 设备高度 */
- (CGFloat)deviceWidth;/**<🐱 设备宽度 */
- (CGFloat)deviceScale;/**<🐱  */

- (CGFloat)deviceStatusBarHeight;/**<🐱 状态栏高度 */
- (BOOL)devicieStatusBarIsHidden;/**<🐱 状态栏是否隐藏 */

- (CGFloat)deviceNavigationBarHeight;/**<🐱  导航栏的高度  */
- (CGFloat)deviceTabBarHeight;/**<🐱 TabBar 高度 */

/* 🐱 IOS_11之前都为0.0f */
- (CGFloat)deviceSafeAreaTopHeight;/**<🐱 顶部安全区域高度 */
- (CGFloat)deviceSafeAreaBottomHeight;/**<🐱 底部的安全区域高度 */
- (CGFloat)deviceSafeAreaLeftHeight;/**<🐱 左边安全区域宽度 */
- (CGFloat)deviceSafeAreaRightHeight;/**<🐱 右边的安全区域宽度 */
- (CGFloat)deviceSafeAreaHeight;/**<🐱 安全区域高度 */
- (CGFloat)deviceSafeAreaWidth;/**<🐱 安全区域宽度 */

- (NSString *)deviceAvailableStoreSize;/**<🐱 设备可用存储大小 MB */
- (NSString *)deviceIPAdress;/**<🐱 设备的IP地址 */

```



