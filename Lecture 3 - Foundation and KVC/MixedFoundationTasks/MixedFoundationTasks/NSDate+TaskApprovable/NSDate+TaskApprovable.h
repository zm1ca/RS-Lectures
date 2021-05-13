//
//  NSDate+TaskApprovable.h
//  MixedFoundationTasks
//
//  Created by Źmicier Fiedčanka on 6.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (TaskApprovable)

@property (nonatomic, readonly) NSString *dayOfTheWeek;

+ (void)logCurrentDate;
+ (void)logWeekDayFor:(NSDate *)date;
+ (NSUInteger)hoursFromMagicDate;

@end

NS_ASSUME_NONNULL_END
