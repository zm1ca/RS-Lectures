//
//  NSString+RSTaskable.m
//  NSString-Category
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "NSString+RSTaskable.h"

@implementation NSString (RSTaskable)

- (BOOL)isEmpty {
    return (self.length == 0);
}

- (NSString *)reversed {
    NSUInteger len = self.length;
    NSMutableString *reversedSelf = [NSMutableString new];

    for (NSUInteger i = 0; i < len; ++i) {
        [reversedSelf appendFormat:@"%C", [self characterAtIndex:(len - i - 1)]];
    }
    
    return reversedSelf;
}

- (NSUInteger)wordsCount {
    return self.length == 0 ? 0 : [self componentsSeparatedByCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet].count;
}

@end
