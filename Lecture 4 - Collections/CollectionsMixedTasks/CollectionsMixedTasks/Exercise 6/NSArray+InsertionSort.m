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
    NSNumber *key = [[NSNumber alloc] init];
    int j;
    
    for (int i = 1; i < arr.count; ++i) {
        key = arr[i];
        j = i - 1;
        while ((j >= 0) && ([arr[j] intValue] > [key intValue])) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
    
    return arr;
}

@end
