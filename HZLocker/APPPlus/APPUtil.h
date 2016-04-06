//
//  APPUtil.h
//  HZLocker
//
//  Created by Devond on 16/4/6.
//  Copyright © 2016年 HZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APPUtil : NSObject

extern CGFloat FitFloat(NSArray *plist);
extern UIFont *FitFont(CGFloat font);

+ (UIViewController *)getCurrentVC;

+(void)addLineInView:(UIView *)baseView position:(CGFloat)position leftMargin:(CGFloat)leftMargin rightMargin:(CGFloat)rightMargin;

#pragma mark - UIImage


/**
 *  给图片变化大小并且切圆角
 *
 *  @param image        传入图片
 *  @param imageSize    输出图片的大小
 *  @param cornerRadius 圆角大小
 *
 *  @return 输出的圆角图片
 */
+(UIImage *)imageRoundedFromImage:(UIImage *)image
                             size:(CGSize)imageSize
                 withCornerRadius:(float)cornerRadius;

/**
 *  图片切圆角
 *
 *  @param image        传入图片
 *  @param cornerRadius 圆角大小
 *
 *  @return 输出的圆角图片
 */
+(UIImage *)imageRoundedFromImage:(UIImage *)image
                 withCornerRadius:(float)cornerRadius;


/**
 *  图片变化大小
 *
 *  @param image  传入图片
 *  @param reSize 最终大小
 *
 *  @return 输出图片
 */
+(UIImage *)imageResizeFromImage:(UIImage *)image
                          toSize:(CGSize)reSize;


/**
 *  图片等比压缩
 *
 *  @param image <#image description#>
 *  @param scale <#scale description#>
 *
 *  @return <#return value description#>
 */
+(UIImage *)imageScaleFromImage:(UIImage *)image
                        toScale:(CGFloat)scale;

/**
 *  图片合成
 *
 *  @param innerImage 里面的图片
 *  @param outerImage 外面的图片
 *
 *  @return 合成图片
 */
+(UIImage *)imageComposeWithInnerImage:(UIImage *)innerImage
                         andOuterImage:(UIImage *)outerImage;

/**
 *  颜色转图片
 */
+(UIImage*)imageWithColor:(UIColor *)color AndSize:(CGSize)size;
+(UIImage *)imageWithText:(NSString *)text;

+(UIImage *)addImageToBaseLocationImageFrom:(UIImage *)image;

+(UIImage *)imageStretchwithImage:(UIImage *)image topGap:(CGFloat)top leftGap:(CGFloat)leftGap;

/**
 *  由世界时转化成当前时区的准确时间
 */
+(NSDate *)realDateFromWorldDate:(NSDate *)worldDate;


+(NSString *)commonStrFromhTimeInterval:(long)timeInterval;

+(NSString *)dailyStrFromDate:(NSDate *)date;

/**
 *  时间转换字符
 */
+(NSString *)stringFromDate:(NSDate *)date;

+(NSString *)stringFromTimeIntervalSince1970:(NSTimeInterval)secs;


/**
 *  Uiview隐藏动画
 *
 *  @param view     传入View
 *  @param hidden   是否隐藏
 *  @param duration 动画时间
 */
+(void)hiddenAnimationWithView:(UIView *)view isHidden:(BOOL)hidden WithDuration:(CGFloat)duration;


+(CGSize)textSizeCalculateFrom:(NSString *)text InWidth:(CGFloat)width FontSize:(CGFloat)fontSize;


+(CGFloat)convertToAngleFromDegree:(CGFloat)degree;



@end
