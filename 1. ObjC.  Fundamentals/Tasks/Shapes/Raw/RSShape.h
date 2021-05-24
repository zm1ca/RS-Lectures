//
//  RSShape.h
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RSShape: NSObject
- (float)area; // return 0
- (float)perimeter; // return 0
- (NSString *)description; // return string with memory address, NSStringFromClass([self class]), area, perimeter
@end

NS_ASSUME_NONNULL_END
