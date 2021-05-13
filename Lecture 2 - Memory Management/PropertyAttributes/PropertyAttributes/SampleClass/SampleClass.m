//
//  SampleClass.m
//  PropertyAttributes
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import "SampleClass.h"

@implementation SampleClass

- (void)setObject1:(id)object1 {
    [object1 retain];
    [_object1 release];
    _object1 = object1;
}

- (void)setObject2:(id)object2 {
    _object2 = object2;
}

- (void)setArray:(NSMutableArray *)array {
    if (_array != array) {
        [_array release];
        _array = [array copy];
    }
}

- (void)setNumber:(NSNumber *)number {
    [number retain];
    [_number release];
    _number = number;
}

- (void)setBalance:(NSUInteger)balance {
    _balance = balance;
}

@end
