//
//  main.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 13.05.21.
//

#import <Foundation/Foundation.h>
#import "ArrayIterator.h"
#import "DataMerger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //MARK: - Iterate through array
        [ArrayIterator execute];
        
        //MARK: - NSData
        NSData *chunkOne = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://zm1ca.github.io/rsschool-cv/cv"]];
        NSData *chunkTwo = [[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://rs.school"]] subdataWithRange:NSMakeRange(0, 145)];
        DataMerger *merger = [DataMerger new];
        NSData *mergedChunks = [merger mergeData:@[chunkOne, chunkTwo]];
        
        NSLog(@"%lu", (unsigned long)[chunkOne length]);
        NSLog(@"%lu", (unsigned long)[chunkTwo length]);
        NSLog(@"%lu", (unsigned long)[mergedChunks length]);
    }
    return 0;
}
