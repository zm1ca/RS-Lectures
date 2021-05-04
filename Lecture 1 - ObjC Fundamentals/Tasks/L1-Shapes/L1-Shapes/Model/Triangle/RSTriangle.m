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

@end
