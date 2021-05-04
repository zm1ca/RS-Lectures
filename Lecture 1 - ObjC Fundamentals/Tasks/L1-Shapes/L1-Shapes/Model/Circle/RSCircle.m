//
//  RSCircle.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "RSCircle.h"

@interface RSCircle () {
    float _radius;
}

@end

@implementation RSCircle

- (instancetype)initWithRadius:(float)radius {
    self = [super init];
    if (self && radius >= 0) {
        _radius = radius;
    }
    return self;
}

+ (instancetype)circleWithRadius:(float)radius {
    return [[RSCircle alloc] initWithRadius:radius];
}

@end
