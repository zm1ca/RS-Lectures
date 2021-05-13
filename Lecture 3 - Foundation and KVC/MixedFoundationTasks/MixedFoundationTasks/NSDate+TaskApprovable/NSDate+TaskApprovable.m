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
    
    switch ([calendar component:NSCalendarUnitWeekday fromDate:self]) {
        case 1: return @"Воскресенье";
        case 2: return @"Понедельник";
        case 3: return @"Вторник";
        case 4: return @"Среда";
        case 5: return @"Четверг";
        case 6: return @"Пятница";
        case 7: return @"Суббота";

        default: return @"";
    }
}

@end
