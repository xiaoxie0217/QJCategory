//
//  UILabel+QJLabel.h
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import <UIKit/UIKit.h>
#import "QJCategory.h"
NS_ASSUME_NONNULL_BEGIN

@interface UILabel (QJLabel)


/*
 改变一段话的某几个字字体颜色和大小
 strArr 需要改变的字体起始位置
 changeArr  需要改变的字体
 str 整句话的
 ColorStr 需要改变的颜色 RGB 例:@"#682F0A"
 size   改变过以后字体大小
 **/
-(void)changeColorStr:(NSArray *)strArr withchangeArr:(NSArray*)changeArr withString:(NSString *)str  withColor:(NSArray *)colorStr withSize:(float)size;
/**
 获取 label 高度/长度
 text : label 的文本
 direction :获取的是高/宽(当获取 label 的高度时候,XIB需要提前规定 label 的宽度,要不会按照当前 XIB 的宽度来计算高度)
 */
-(CGSize)adaptiveLabel:(NSString *)text direction:(direction)direction;
@end

NS_ASSUME_NONNULL_END
