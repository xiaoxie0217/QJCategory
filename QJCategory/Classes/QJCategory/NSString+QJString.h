//
//  NSString+QJString.h
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import <Foundation/Foundation.h>
#import "QJCategory.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSString (QJString)

/*
 验证手机号码
 **/
+ (BOOL)validateMobile:(NSString *)mobile;
/*
 获取字符串的高
 font:字体大小
 direction:判断字符串的方向(宽度或者高度)
 width:当判断字符串高度的时候,这个参数必传(填充字符串的 label 高度)否则可不传
 **/
-(CGFloat)getlabeWidth:(UIFont *)font direction:(direction)direction width:(CGFloat)width;
@end

NS_ASSUME_NONNULL_END
