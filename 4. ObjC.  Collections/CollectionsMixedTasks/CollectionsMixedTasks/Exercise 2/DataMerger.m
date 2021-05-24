//
//  DataMerger.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "DataMerger.h"

@implementation DataMerger

- (NSData *)mergeData:(NSArray<NSData *> *)array {
    NSMutableData *mergedData = [[NSMutableData alloc] init];
    for (NSData *dataChunk in array) {
        [mergedData appendData:dataChunk];
    }
    return mergedData;
}

@end
