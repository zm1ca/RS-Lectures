//
//  RSCircle.h
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSShapeType.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSCircle: NSObject <RSShapeType>
- (instancetype)initWithRadius:(float)radius;
+ (instancetype)circleWithRadius:(float)radius;
- (BOOL)isEqualToCircle:(RSCircle *)other;
- (BOOL)isEqual:(id)other;
@end

NS_ASSUME_NONNULL_END
