//
//  Car.m
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import "RSCar.h"

@implementation RSCar

@synthesize identifier = _identifier;

- (instancetype)initWithCaptain:(RSPassenger *)captain {
    self = [super initWithCaptain:captain];
    if (self) {
        _identifier = [[NSUUID UUID] UUIDString];
    }
    return self;
}

- (void)move {
    NSLog(@"I'm driving, the driver is %@", self.captain.name);
}

@end
