//
//  UIView+QJLabel.h
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (QJView)
///当前控件的 x 轴距离
@property (nonatomic, assign) CGFloat x;
///当前控件的 y 轴距离
@property (nonatomic, assign) CGFloat y;
///当前控件最右边距离 x 轴距离
@property (nonatomic, assign) CGFloat right;
///当前控件最下边距离 y 轴距离
@property (nonatomic, assign) CGFloat bottom;
///当前控件的宽度
@property (nonatomic, assign) CGFloat width;
///当前控件的高度
@property (nonatomic, assign) CGFloat height;
///当前控件中心点 x 轴的位置
@property (nonatomic, assign) CGFloat centerX;
///当前控件中心点 y 轴的位置
@property (nonatomic, assign) CGFloat centerY;
///当前控件的尺寸
@property (nonatomic, assign) CGSize  size;

/**
 给控件切圆角(贝塞尔曲线切,XIB 控件需要放到viewDidLayoutSubviews里面)
 radius  圆角的尺寸
 corners  对应iOS 给定的方法(如果需要切特定,则如例赋值(UIRectCornerTopLeft | UIRectCornerTopRight))
 */
-(void)cutViewRounded:(CGFloat)radius andRoundingCorners:(UIRectCorner)corners;

@end

NS_ASSUME_NONNULL_END
