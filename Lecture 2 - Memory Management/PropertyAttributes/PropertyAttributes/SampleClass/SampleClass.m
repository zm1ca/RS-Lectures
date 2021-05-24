//
//  SampleClass.m
//  PropertyAttributes
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import "SampleClass.h"

@implementation SampleClass

@synthesize object1 = _object1;
@synthesize object2 = _object2;
@synthesize array   = _array;
@synthesize number  = _number;
@synthesize balance = _balance;

// MARK: (nonatomic, retain)
- (void)setObject1:(id)object1 {
    [object1 retain];
    [_object1 release];
    _object1 = object1;
}

- (id)object1 {
    return _object1;
}

// MARK: (nonatomic, assign)
- (void)setObject2:(id)object2 {
    _object2 = object2;
}

- (id)object2 {
    return _object2;
}

// MARK: (nonatomic, copy)
- (void)setArray:(NSMutableArray *)array {
    if (_array != array) {
        [_array release];
        _array = [array copy];
    }
}

- (NSMutableArray *)array {
    return _array;
}

// MARK: (atomic, retain)
- (void)setNumber:(NSNumber *)number {
    @synchronized(_number) {
        [number retain];
        [_number release];
        _number = number;
    }
}

- (NSNumber *)number {
    return _number;
}

// MARK: ??
- (void)setBalance:(NSUInteger)balance {
    _balance = balance;
}

- (NSUInteger)balance {
    return _balance;
}

@end
