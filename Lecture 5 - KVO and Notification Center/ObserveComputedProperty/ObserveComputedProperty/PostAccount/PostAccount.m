//
//  PostAccount.m
//  ObserveComputedProperty
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "PostAccount.h"

@implementation PostAccount

- (NSString *)address {
    return [NSString stringWithFormat:@"%@ %@: %@, %@, %@, %ld", _firstName, _lastName, _region, _locality, _streetAddress, (long)_postalCode];
}


- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName streetAddress:(NSString *)streetAddress locality:(NSString *)locality region:(NSString *)region postalCode:(NSInteger)postalCode {
    self = [super init];
    if (self) {
        _firstName      = firstName;
        _lastName       = lastName;
        _streetAddress  = streetAddress;
        _locality       = locality;
        _region         = region;
        _postalCode     = postalCode;
        
        _observingKeys = @[@"firstName", @"lastName", @"streetAddress", @"locality", @"region", @"postalCode"];
    }
    return self;
}

@end
