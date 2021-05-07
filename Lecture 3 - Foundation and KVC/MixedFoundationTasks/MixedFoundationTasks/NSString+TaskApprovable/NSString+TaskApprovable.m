//
//  NSString+TaskApprovable.m
//  MixedFoundationTasks
//
//  Created by Źmicier Fiedčanka on 6.05.21.
//

#import "NSString+TaskApprovable.h"

@implementation NSString (TaskApprovable)

- (NSString *)removeDuplicateSpaces {
    NSMutableString *str = [self mutableCopy];
    
    for (NSUInteger i = self.length - 1; i > 0; --i) {
        if (([str characterAtIndex:i] == 32) && ([str characterAtIndex:i] == [str characterAtIndex:(i-1)])) {
            [str deleteCharactersInRange:NSMakeRange(i-1, 1)];
        }
    }

    return str;
}

- (NSString *)removeDuplicateCharacters {
    NSMutableString *str = [self mutableCopy];
    
    for (NSUInteger i = self.length - 1; i > 0; --i) {
        if ([str characterAtIndex:i] == [str characterAtIndex:(i-1)]) {
            [str deleteCharactersInRange:NSMakeRange(i-1, 1)];
        }
    }

    return str;
}

- (NSString *)longestWord {
    NSArray<NSString *> *words = [self componentsSeparatedByCharactersInSet:NSCharacterSet.whitespaceCharacterSet];
    NSString *longestWord = nil;
    
    for (NSString *word in words) {
        if (word.length > longestWord.length) {
            longestWord = word;
        }
    }
    
    return longestWord;
}

- (NSUInteger)vowelsCount {
    //nvm, having fun with NSCharacterSet
    NSCharacterSet *lowercaseVowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSCharacterSet *uppercaseVowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOU"];
    NSMutableCharacterSet *vowels = [[NSMutableCharacterSet alloc] init];
    [vowels formUnionWithCharacterSet:lowercaseVowels];
    [vowels formUnionWithCharacterSet:uppercaseVowels];
    
    return [self.lowercaseString componentsSeparatedByCharactersInSet:vowels].count - 1;
}

// MARK: - Works just fine, but in a slightly other way
- (NSUInteger)vowelsCountV2 {
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    return [self.lowercaseString componentsSeparatedByCharactersInSet:vowels].count - 1;
}

- (NSString *)removeDuplicateSpacesV2 {
    NSUInteger whitespaceLocation = [self rangeOfString:@"  "].location;
    if (whitespaceLocation == NSNotFound) {
        return self;
    } else {
        NSUInteger whiteSpaceFirstIndex = [self rangeOfString:@"  "].location;
        NSUInteger whitespaceCount = 1;

        while (whiteSpaceFirstIndex + whitespaceCount < self.length && [self characterAtIndex:whiteSpaceFirstIndex] == [self characterAtIndex:(whiteSpaceFirstIndex + whitespaceCount)]) {
            whitespaceCount++;
        }

        NSMutableString *mutableSelf = [self mutableCopy];
        [mutableSelf deleteCharactersInRange:NSMakeRange(whiteSpaceFirstIndex + 1, whitespaceCount - 1)];
        return [mutableSelf removeDuplicateSpaces];
    }
}

@end
