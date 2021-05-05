//
//  RSCircle.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "RSCircle.h"

@interface RSCircle ()

@property float radius;

@end

@implementation RSCircle

- (instancetype)initWithRadius:(float)radius {
    self = [super init];
    if (radius < 0) {
        return nil;
    }
    if (self) {
        _radius = radius;
    }
    return self;
}

+ (instancetype)circleWithRadius:(float)radius {
    return [[RSCircle alloc] initWithRadius:radius];
}

- (BOOL)isEqualToCircle:(RSCircle *)other {
    return self.area == other.area && self.perimeter == other.perimeter;
}

- (BOOL)isEqual:(id)other {
    if (self == other) {
        return YES;
    }
    
    if (![other isKindOfClass:RSCircle.class]) {
        return NO;
    }

    return [self isEqualToCircle:other];
}

- (float)area {
    return 3.14f * self.radius * self.radius;
}

- (float)perimeter {
    return 2.0f * 3.14f * self.radius;
}

@end
