//
//  RSVehicle.h
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import <Foundation/Foundation.h>
#import "RSPassenger.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSVehicle : NSObject

@property (nonatomic, strong, readonly) RSPassenger *captain;
@property (nonatomic, assign, readonly) BOOL running;

- (instancetype)initWithCaptain: (RSPassenger *)captain;
- (void)toggleEngine: (BOOL)start;

@end

NS_ASSUME_NONNULL_END
