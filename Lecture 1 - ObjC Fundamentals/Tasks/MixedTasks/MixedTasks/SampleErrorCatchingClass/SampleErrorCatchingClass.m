//
//  SampleErrorCatchingClass.m
//  MixedTasks
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "SampleErrorCatchingClass.h"

@implementation SampleErrorCatchingClass

- (BOOL)someUsefulFunction:(NSInteger)number error:(NSError **)error {
    if (number < 0) {
        *error = [NSError errorWithDomain:@"Less than Zero" code:0 userInfo:nil];
        return true;
    } else if (number > 10) {
        *error = [NSError errorWithDomain:@"More than Ten" code:10 userInfo:nil];
        return true;
    } else {
        *error = nil;
        return  false;
    }
}

@end
