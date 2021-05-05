//
//  DirectionsManager.h
//  MixedTasks
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DirectionsManager : NSObject

typedef NS_ENUM(NSInteger, Direction) {
    DirectionNorth,
    DirectionEast,
    DirectionSouth,
    DirectionWest
};

- (NSString*)directionNameFor:(Direction)dir;

@end

NS_ASSUME_NONNULL_END
