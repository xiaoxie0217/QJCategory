//
//  UIColor+QJColor.h
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (QJColor)
/*
 当RGBString为空或者 nil 的时候 默认返回红色
 **/
+(UIColor *)colorWithRGBString:(NSString *)RGBString;
@end

NS_ASSUME_NONNULL_END
