//
//  SampleErrorCatchingClass.h
//  MixedTasks
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SampleErrorCatchingClass : NSObject

- (BOOL)someUsefulFunction:(NSInteger)number error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
