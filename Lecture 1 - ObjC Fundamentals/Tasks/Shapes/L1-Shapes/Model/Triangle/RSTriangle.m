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

- (BOOL)isEqualToTriangle:(RSTriangle *)other {
    // FIXME: float comparison
    if (self.area == other.area && self.perimeter == other.perimeter) {
        return true;
    } else {
        return false;
    }
}

- (BOOL)isEqual:(id)other {
    if ([other isMemberOfClass:[self class]]) {
        return [self isEqualToTriangle:other];
    }
    return false;
}

- (float)area {
    float p = (self.a + self.b + self.c) / 2;
    return sqrtf(p * (p - self.a) * (p - self.b) * (p - self.c));
}

- (float)perimeter {
    return self.a + self.b + self.c;
}

@end
