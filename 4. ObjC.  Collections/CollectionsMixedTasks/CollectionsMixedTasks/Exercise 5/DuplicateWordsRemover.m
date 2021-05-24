//
//  DuplicateWordsRemover.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "DuplicateWordsRemover.h"

@implementation DuplicateWordsRemover

+ (NSString *)removeDuplicateWordsFrom:(NSString *) string {
    NSSet<NSString *> *words = [NSSet setWithArray: [string componentsSeparatedByCharactersInSet:NSCharacterSet.whitespaceCharacterSet]];
    NSArray<NSString *> *sortedWords = [[words allObjects] sortedArrayUsingSelector:@selector(compare:)];
    return [sortedWords componentsJoinedByString:@" "];
}

@end
