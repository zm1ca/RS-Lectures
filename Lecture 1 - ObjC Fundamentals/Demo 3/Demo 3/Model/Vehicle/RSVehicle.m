//
//  RSVehicle.m
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import "RSVehicle.h"

@interface RSVehicle ()

@property (nonatomic, strong, readwrite) RSPassenger *captain;
@property (nonatomic, assign, readwrite) BOOL running;

@end

@implementation RSVehicle

- (instancetype)initWithCaptain:(RSPassenger *)captain {
    self = [super init];
    if (self) {
        _captain = captain;
        _running = NO;
    }
    
    return self;
}

- (void)toggleEngine:(BOOL)start {
    _running = YES;
    NSLog(self.running ? @"Engine works" : @"Engine is stopped");
}

@end
