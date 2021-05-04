//
//  RSRectangle.h
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSRectangle: RSShape
- (instancetype)initWithSides:(float)a :(float)b;
+ (instancetype)rectangleWithSides: (float)a :(float) b;
- (BOOL)isEqualToRectangle:(RSRectangle *)other;
- (BOOL)isEqual:(id)other;
@end

NS_ASSUME_NONNULL_END
