//
//  NSArray+InsertionSort.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "NSArray+InsertionSort.h"

@implementation NSArray (InsertionSort)

- (NSArray *)insertionSort {
    
    NSMutableArray *arr = [NSMutableArray arrayWithArray:self];
    for (id object in arr) {
        if (![object respondsToSelector:@selector(compare:)]) {
            NSLog(@"Detected an uncomparable object.");
            return nil;
        }
    }
    
    id key;
    int j;
    for (int i = 1; i < arr.count; ++i) {
        key = arr[i];
        j = i - 1;
        while ((j >= 0) && ([arr[j] compare:key] == NSOrderedDescending)) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
    
    return arr;
}

@end
