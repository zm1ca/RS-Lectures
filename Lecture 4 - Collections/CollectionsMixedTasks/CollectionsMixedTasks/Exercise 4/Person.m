//
//  Person.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
    }
    return self;
}

+ (instancetype)personWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    return [[Person alloc] initWithFirstName:firstName lastName:lastName];
}

- (BOOL)isEqualToPerson:(Person *) other {
    return [self.firstName isEqualToString:other.firstName] && [self.lastName isEqualToString:other.lastName];
}

- (BOOL)isEqual:(id)other {
    if (other == self) {
        return YES;
    }
    
    if (![other isKindOfClass:Person.class]) {
        return NO;
    }
    
    return [self isEqualToPerson:other];
}

- (NSUInteger)hash {
    return _firstName.hash ^ _lastName.hash;
}


- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    Person *newPerson = [[[self class] allocWithZone:zone] init];
    newPerson->_firstName = [_firstName copyWithZone:zone];
    newPerson->_lastName = [_lastName copyWithZone:zone];
    return newPerson;
}

@end
