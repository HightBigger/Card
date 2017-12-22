//
//  XDGlobalSetting.h
//  XDCardTime
//
//  Created by chenyixing on 2017/12/22.
//  Copyright © 2017年 fiberhome. All rights reserved.
//

#ifndef XDGlobalSetting_h
#define XDGlobalSetting_h

#define isValid(object)    (object && ![object isEqual:[NSNull null]])

#define IS_IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8)
#define IS_IOS9 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9)
#define IS_IOS10 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 10)
#define IS_IOS11 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 11)

#define IS_IPHONE_X (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 812.0)

#define SCREEN_HEIGHT  [[UIScreen mainScreen] bounds].size.height
#define SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width


#endif /* XDGlobalSetting_h */
