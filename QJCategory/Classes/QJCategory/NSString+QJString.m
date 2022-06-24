//
//  NSString+QJString.m
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import "NSString+QJString.h"

@implementation NSString (QJString)
// 验证手机号码
+ (BOOL)validateMobile:(NSString *)mobile {
    // 1开头 长度为11位
    NSString *phoneRegex = @"1\\d{10}";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
}

-(CGSize)adaptiveString:(CGFloat)font direction:(direction)direction width:(CGFloat)width{
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, HUGE, HUGE)];
    if (direction == horizontal) {//宽度
        lab.frame =CGRectMake(0, 0, HUGE, HUGE);
    }else{
        lab.frame =CGRectMake(0, 0, width, HUGE);
    }
    lab.numberOfLines = 0 ;
    lab.font = [UIFont systemFontOfSize:font];
    lab.text = self;
    [lab sizeToFit];
    return lab.frame.size;
}
@end
