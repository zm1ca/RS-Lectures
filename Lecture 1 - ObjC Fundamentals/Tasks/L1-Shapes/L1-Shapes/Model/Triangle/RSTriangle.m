//
//  RSTriangle.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "RSTriangle.h"

@interface RSTriangle () {
    float _a;
    float _b;
    float _c;
}

@end

@implementation RSTriangle

- (instancetype)initWithSides:(float)a :(float)b :(float)c {
    self = [super init];
    if (self) {
        _a = a;
        _b = b;
        _c = c;
    }
    return self;
}

+ (instancetype)triangleWithSides:(float)a :(float)b :(float)c {
    return [[RSTriangle alloc] initWithSides:a :b :c];
}

@end
