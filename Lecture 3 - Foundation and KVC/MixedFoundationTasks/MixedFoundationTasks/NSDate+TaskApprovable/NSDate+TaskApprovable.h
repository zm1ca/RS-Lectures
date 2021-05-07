//
//  NSDate+TaskApprovable.h
//  MixedFoundationTasks
//
//  Created by Źmicier Fiedčanka on 6.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (TaskApprovable)

@property (nonatomic, readonly) NSString *dayOfTheWeek; //create getter?

+ (void)logCurrentDate;
+ (void)logWeekDayFor:(NSDate *)date;

@end

NS_ASSUME_NONNULL_END
