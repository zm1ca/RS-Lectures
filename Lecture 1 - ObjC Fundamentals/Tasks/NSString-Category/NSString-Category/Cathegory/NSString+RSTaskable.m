//
//  NSString+RSTaskable.m
//  NSString-Category
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "NSString+RSTaskable.h"

@implementation NSString (RSTaskable)

- (BOOL)isEmpty {
    return ([self length] == 0);
}

- (NSString *)reversed {
    NSUInteger len = [self length];
    unichar buffer[len + 1];
    [self getCharacters:buffer range:NSMakeRange(0, len)];
    
    NSMutableString *reversedSelf = [NSMutableString new];

    for (int i = 0; i < len; ++i) {
        [reversedSelf appendFormat:@"%C", buffer[len - i - 1]];
    }
    
    return reversedSelf;
}

- (NSUInteger)wordsCount {
    if ([self isEmpty]) {
        return 0;
    }
    
    NSUInteger wordsCount = 1;
    
    NSUInteger len = [self length];
    unichar buffer[len + 1];
    [self getCharacters:buffer range:NSMakeRange(0, len)];
    
    for (int i = 0; i < len; ++i) {
        if (buffer[i] == 10 || buffer[i] == 32) {
            wordsCount++;
        }
    }
    
    return wordsCount;
}

@end
