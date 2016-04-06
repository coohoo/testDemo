//
//  APPDefine.h
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#ifndef APPDefine_h
#define APPDefine_h


#define RGBFromHex(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

#define DefaultColor                         RGBFromHex(0x004a27)
#define DefaultBackGroundColor               RGBFromHex(0xf8f8f8)

#define WS(weakSelf) __weak __typeof(&*self) weakSelf = self;

#define ARRAY_EFFECT(array)  array != nil && ![array isKindOfClass:[NSNull class]] && array.count!= 0


#define IPHONE5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640.0f, 1136.0f), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750.0f, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242.0f, 2208.0f), [[UIScreen mainScreen] currentMode].size) : NO)

#define kNavBarHeight        64
#define kStatusHeight        20
#define kTabbarHeight        49

#define IPHONE_WIDTH         [UIScreen mainScreen].bounds.size.width
#define IPHONE_HEIGHT        [UIScreen mainScreen].bounds.size.height

#define UI_WINDOW            [UIApplication sharedApplication].keyWindow

#define UI_WIDTH             [UIScreen mainScreen].bounds.size.width
#define UI_HEIGHT            ([UIScreen mainScreen].bounds.size.height - kNavBarHeight)
#define TRUE_HEIGHT          ([UIScreen mainScreen].bounds.size.height - kNavBarHeight - kTabbarHeight)



#define NetTimeOut_20        20

#define kScaleW ([UIScreen mainScreen].bounds.size.width/375)
#define kScaleH ([UIScreen mainScreen].bounds.size.height/667)

#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]






#endif /* APPDefine_h */
