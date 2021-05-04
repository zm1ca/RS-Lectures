//
//  NSString+RSTaskable.h
//  NSString-Category
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (RSTaskable)

- (BOOL)isEmpty;
- (NSString *)reversed;
- (NSUInteger)wordsCount; // space and newline separator 

@end

NS_ASSUME_NONNULL_END
