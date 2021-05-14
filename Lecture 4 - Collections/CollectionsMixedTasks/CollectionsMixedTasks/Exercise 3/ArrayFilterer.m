//
//  ArrayFilterer.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "ArrayFilterer.h"

@implementation ArrayFilterer

+ (NSArray<NSString *> *)filteredArrayFrom:(NSArray<NSString *> *)array containing:(NSString *)string {
    NSPredicate *stringPredicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@", string];
    return [array filteredArrayUsingPredicate:stringPredicate];
}

@end
