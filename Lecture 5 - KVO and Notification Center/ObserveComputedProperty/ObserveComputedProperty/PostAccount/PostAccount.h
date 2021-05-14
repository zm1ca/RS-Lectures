//
//  PostAccount.h
//  ObserveComputedProperty
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///Implement observing address property. The observer should be notified when any property is changed.
///Test observing in main function.

@interface PostAccount : NSObject

@property (nonatomic, readonly) NSArray<NSString *> *observingKeys;

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *streetAddress;
@property (nonatomic, copy) NSString *locality;
@property (nonatomic, copy) NSString *region;
@property (nonatomic, assign) NSInteger postalCode;
@property (nonatomic, readonly) NSString *address;

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                    streetAddress:(NSString *)streetAddress
                         locality:(NSString *)locality
                           region:(NSString *)region
                       postalCode:(NSInteger)postalCode;

@end

NS_ASSUME_NONNULL_END
