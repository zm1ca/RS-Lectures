//
//  DuplicateWordsRemover.h
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///Implement a function that removes duplicate words from string and returns words sorted in alphanumerical order separated by space.

@interface DuplicateWordsRemover : NSObject

+ (NSString *)removeDuplicateWordsFrom:(NSString *) string;

@end

NS_ASSUME_NONNULL_END
