//
//  RSTriangle.h
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSTriangle: RSShape
// provide init with sides, return nil if a >= b + c ????, validate for negative values
// provide class method for create instance
- (BOOL)isEqualToTriangle:(RSTriangle *)other;
- (BOOL)isEqual:(id)other;
@end

NS_ASSUME_NONNULL_END
