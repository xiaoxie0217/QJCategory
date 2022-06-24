//
//  UILabel+QJLabel.m
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import "UILabel+QJLabel.h"
#import "UIColor+QJColor.h"
@implementation UILabel (QJLabel)
#pragma mark 改变字体大小颜色及字号
-(void)changeColorStr:(NSArray *)strArr withchangeArr:(NSArray*)changeArr withString:(NSString *)str  withColor:(NSArray *)colorArr withSize:(float)size{
    if (strArr.count != changeArr.count != colorArr.count) {
        return;
    }
    NSMutableAttributedString *hintString=[[NSMutableAttributedString alloc]initWithString:str];
    
    for (int i = 0; i<strArr.count; i++) {
        [hintString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRGBString:colorArr[i]] range:NSMakeRange([strArr[i] length],[changeArr[i] length])];
        
        [hintString addAttribute:NSFontAttributeName value: [UIFont systemFontOfSize:size] range:NSMakeRange([strArr[i] length],[changeArr[i] length])];
    }
    self.attributedText = hintString;
}
#pragma mark 获取label 高度
-(CGSize)adaptiveLabel:(NSString *)text direction:(direction)direction{
    self.numberOfLines = 0;
    self.text = text;
    CGRect rect = self.frame;
    CGSize size;
    if (direction == horizontal) {
        size = [self sizeThatFits:CGSizeMake(MAXFLOAT, self.frame.size.height)];
        self.frame = CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height);
    }else {
        size = [self sizeThatFits:CGSizeMake(self.frame.size.width, MAXFLOAT)];
        if (size.height>rect.size.height) {
            self.frame = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
        }else{
            size = CGSizeMake(rect.size.width, rect.size.height);
        }
    }
    return size;
}
#pragma mark 给label画横线
-(void)addLineInLabel:(NSString *)str andStyle:(NSUnderlineStyle)style{
    NSMutableAttributedString *old_attStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@",str]];
    [old_attStr addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:style] range:NSMakeRange(0, [NSString stringWithFormat:@"%@",str].length)];
    self.attributedText = old_attStr;
}

@end
