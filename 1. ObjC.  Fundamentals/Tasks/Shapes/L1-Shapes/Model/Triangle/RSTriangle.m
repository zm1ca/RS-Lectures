//
//  RSTriangle.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "RSTriangle.h"

@interface RSTriangle ()

@property float a;
@property float b;
@property float c;

@end

@implementation RSTriangle

- (instancetype)initWithSides:(float)a :(float)b :(float)c {
    self = [super init];
    // FIXME: insufficient validation
    if (a < 0 || b < 0 || c < 0 || a >= b + c) {
        return nil;
    }
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

- (BOOL)isEqual:(id)other {
    if (self == other) {
        return YES;
    }
    
    if (![other isKindOfClass:RSTriangle.class]) {
        return NO;
    }

    return [self isEqualToTriangle:other];
}

- (BOOL)isEqualToTriangle:(RSTriangle *)other {
    return (fabsf(self.a - other.a) < FLT_EPSILON) && (fabsf(self.b - other.b) < FLT_EPSILON) && (fabsf(self.c - other.c) < FLT_EPSILON);
}

- (float)area {
    float p = (self.a + self.b + self.c) / 2;
    return sqrtf(p * (p - self.a) * (p - self.b) * (p - self.c));
}

- (float)perimeter {
    return self.a + self.b + self.c;
}

@end
