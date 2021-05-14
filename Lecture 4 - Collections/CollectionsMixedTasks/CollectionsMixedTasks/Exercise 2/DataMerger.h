//
//  DataMerger.h
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///NSData
///Suppose that you receive data objects in chunks. Merge that data chunks into one object.
///Implement a function that receives an array of data chunks and returns merged data.
///- (NSData *)mergeData:(NSArray<NSData *> *)array;

@interface DataMerger : NSObject

- (NSData *)mergeData:(NSArray<NSData *> *)array;

@end

NS_ASSUME_NONNULL_END
