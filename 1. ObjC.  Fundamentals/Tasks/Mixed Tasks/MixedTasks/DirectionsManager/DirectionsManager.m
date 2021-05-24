//
//  DirectionsManager.m
//  MixedTasks
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "DirectionsManager.h"

@implementation DirectionsManager

- (NSString*)directionNameFor:(Direction)dir {
    switch (dir) {
        case DirectionNorth: return @"North";
        case DirectionEast: return @"East";
        case DirectionSouth: return @"South";
        case DirectionWest: return @"West";
    }
}

@end
