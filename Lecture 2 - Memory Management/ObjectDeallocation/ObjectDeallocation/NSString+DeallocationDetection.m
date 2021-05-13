//
//  NSString+DeallocationDetection.m
//  ObjectDeallocation
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import "NSString+DeallocationDetection.h"

@implementation NSString (DeallocationDetection)

- (void)dealloc {
    NSLog(@"NSString '%@' was deallocated.", self);
}

@end
