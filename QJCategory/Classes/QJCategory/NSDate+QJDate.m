//
//  NSDate+QJDate.m
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import "NSDate+QJDate.h"

@implementation NSDate (QJDate)
// 获取当前时间的时间戳   （以毫秒为单位） 返回值格式:1555642454396
+ (NSString *)getCurrentTimestamp {
    NSDate *datenow = [NSDate date];
    // 这里注意要获取完全部数值后在(long)强转, 如果(long)[datenow timeIntervalSince1970]*1000 这么写是先强转在*1000,就是秒级别的数据了
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)([datenow timeIntervalSince1970]*1000)];
    return timeSp;
}

// 根据时间戳获取时间自定义格式时间
// @param timestamp 时间戳
// @param formatter NSDateFormatter
+ (NSString *)getDateStringFromStamp:(NSString *)timestamp format:(nullable NSString *)formatter {
    NSTimeInterval time = [timestamp doubleValue];
    if (timestamp.length > 10) {
        time = [timestamp doubleValue]/1000.0;
    }
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (!formatter || [@""isEqualToString:formatter]) {
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    } else {
        [dateFormatter setDateFormat:formatter];
    }
    NSTimeZone *azone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
    [dateFormatter setTimeZone:azone];
    NSString *localDateStr = [dateFormatter stringFromDate:date];
    
    return localDateStr;
}
@end
