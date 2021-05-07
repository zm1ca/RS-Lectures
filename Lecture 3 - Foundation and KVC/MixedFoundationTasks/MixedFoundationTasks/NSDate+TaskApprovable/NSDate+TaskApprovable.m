//
//  NSDate+TaskApprovable.m
//  MixedFoundationTasks
//
//  Created by Źmicier Fiedčanka on 6.05.21.
//

#import "NSDate+TaskApprovable.h"

@implementation NSDate (TaskApprovable)

+ (void)logCurrentDate {
    NSDate *currentDate = [NSDate new];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MMM-dd";
    
    NSLog(@"Date: %@", [dateFormatter stringFromDate:currentDate]);
}

+ (void)logWeekDayFor:(NSDate *)date {
    NSLog(@"%@", date.dayOfTheWeek);
}

- (NSString *)dayOfTheWeek {
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    NSLog(@"%ld", (long)[calendar component:NSCalendarUnitWeekday fromDate:self]);
    return @"";
}

@end
