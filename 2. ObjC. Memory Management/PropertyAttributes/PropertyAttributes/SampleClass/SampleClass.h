//
//  SampleClass.h
//  PropertyAttributes
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SampleClass : NSObject

@property (nonatomic, retain) id object1;
@property (nonatomic) id object2;
@property (nonatomic, copy) NSMutableArray *array;
@property (atomic, retain) NSNumber *number;
@property NSUInteger balance;

@end

NS_ASSUME_NONNULL_END
