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
// provide init with sides, validate for negative values
// provide class method for create instance
- (BOOL)isEqualToRectangle:(RSRectangle *)other;
- (BOOL)isEqual:(id)other;
@end

NS_ASSUME_NONNULL_END
