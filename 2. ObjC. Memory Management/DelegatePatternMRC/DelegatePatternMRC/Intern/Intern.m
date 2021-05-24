//
//  Intern.m
//  DelegatePatternMRC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import "Intern.h"

@implementation Intern

- (instancetype)initWithBoss:(Boss *)boss {
    self = [super init];
    if (self) {
        _boss = [boss retain];
        boss.delegate = self;
    }
    return self;
}

- (void)doStuff {
    NSLog(@"Working hard 🧑‍💻 Because boss just became %@", self.boss.mood);
}

- (void)dealloc {
    NSLog(@"Intern deallocated.");
    
    [_boss release];
    [super dealloc];
}

@end
