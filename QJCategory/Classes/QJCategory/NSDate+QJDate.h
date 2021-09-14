//
//  NSDate+QJDate.h
//  NIMDemo
//
//  Created by 谢立新 on 2021/9/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (QJDate)
/*
 获取当前时间的时间戳   （以毫秒为单位） 返回值格式:1555642454396
 **/
+ (NSString *)getCurrentTimestamp;

/*
 根据时间戳获取时间自定义格式时间
 @param timestamp 时间戳
 @param formatter NSDateFormatter(formatter为空默认返回yyyy-MM-dd HH:mm:ss格式)
 **/
+ (NSString *)getDateStringFromStamp:(NSString *)timestamp format:(nullable NSString *)formatter;
@end

NS_ASSUME_NONNULL_END
