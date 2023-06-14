//
//  Log.m
//  LZDLog
//
//  Created by Dio Brand on 2023/6/14.
//

#import "Log.h"

@implementation Log

+(void)logMsg:(NSString *)msg {
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone defaultTimeZone]];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd aHH:mm:ss"];
    NSString *current_time = [dateFormatter stringFromDate:date];
    NSLog(@"%@-->%@",current_time,msg);
}

@end
