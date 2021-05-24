//
//  Boss.m
//  DelegatePatternARC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import "Boss.h"

@implementation Boss

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mood = @"Calm";
        _delegate = nil;
    }
    return self;
}

- (void)setMood:(NSString *)mood {
    NSLog(@"Setting mood to '%@'.", mood);
    _mood = mood;
    if([self.delegate respondsToSelector:@selector(doStuff)]) {
        [self.delegate doStuff];
    }
}

- (void)dealloc {
    NSLog(@"Boss deallocated.");
}

@end
