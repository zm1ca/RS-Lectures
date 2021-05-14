//
//  ArrayFilterer.h
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>

///Filter array of strings by case-insensitive contain a substring.

NS_ASSUME_NONNULL_BEGIN

@interface ArrayFilterer : NSObject

+ (NSArray<NSString *>*)filteredArrayFrom:(NSArray<NSString *>*) array containing:(NSString *) string;

@end

NS_ASSUME_NONNULL_END
