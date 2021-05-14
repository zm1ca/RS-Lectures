//
//  Person.h
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///Implement class Person with fields firstName, lastName . Make it dictionary key compliant.

@interface Person : NSObject <NSCopying>

@property(nonatomic, strong) NSString *firstName;
@property(nonatomic, strong) NSString *lastName;

- (instancetype) initWithFirstName: (NSString *) firstName lastName:(NSString *) lastName;
+ (instancetype) personWithFirstName: (NSString *) firstName lastName:(NSString *) lastName;
- (BOOL)isEqualToPerson:(Person *) other;
- (BOOL)isEqual:(id)other;
- (NSUInteger)hash;

@end

NS_ASSUME_NONNULL_END
