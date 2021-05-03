//
//  CarPort.h
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import <Foundation/Foundation.h>
#import "RSCar.h"
#import "RSEnterable.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSCarPort : NSObject

- (void)launchCar:(RSCar *)car;
- (void)enter:(id<RSEnterable>)entry;

@end

NS_ASSUME_NONNULL_END
