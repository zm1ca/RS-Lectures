//
//  RSPassenger.m
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import "RSPassenger.h"

@implementation RSPassenger

@synthesize identifier = _identifier;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name; //using ivar
        //self.name = name is an option too, but it uses property getter which might be slow; init's must be as fastm as possible
        _identifier = [[NSUUID UUID] UUIDString];
    }
    
    return self;
}

- (void)sayHello {
    NSLog(@"Hello, my name is %@", self.name);
}

@end
