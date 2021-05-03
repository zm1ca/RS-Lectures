//
//  Car.h
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import "RSVehicle.h"
#import "RSEnterable.h"

NS_ASSUME_NONNULL_BEGIN

@interface RSCar : RSVehicle <RSEnterable>

- (void)move;

@end

NS_ASSUME_NONNULL_END
