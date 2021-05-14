//
//  DataMerger.h
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataMerger : NSObject

- (NSData *)mergeData:(NSArray<NSData *> *)array;

@end

NS_ASSUME_NONNULL_END
