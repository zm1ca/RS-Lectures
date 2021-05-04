//
//  RSCircle.h
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSCircle: RSShape
// provide init with radius, validate for negative value
// provide class method for create instance
- (BOOL)isEqualToCircle:(RSCircle *)other;
- (BOOL)isEqual:(id)other;
@end

NS_ASSUME_NONNULL_END
