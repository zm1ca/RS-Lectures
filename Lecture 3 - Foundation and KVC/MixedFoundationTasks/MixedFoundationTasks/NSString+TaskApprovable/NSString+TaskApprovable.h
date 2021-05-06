//
//  NSString+TaskApprovable.h
//  MixedFoundationTasks
//
//  Created by Źmicier Fiedčanka on 6.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TaskApprovable)

- (NSString *)removeDuplicateSpaces;
- (NSString *)removeDuplicateCharacters;
- (NSString *)longestWord;
- (NSUInteger)vowelsCount;

- (NSUInteger)vowelsCountV2; //short
- (NSString *)removeDuplicateSpacesV2; //recursive

@end

NS_ASSUME_NONNULL_END
