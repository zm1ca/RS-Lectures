//
//  main.m
//  MixedTasks
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "DirectionsManager.h"
#import "SampleErrorCatchingClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: NS_ENUM Directions
        DirectionsManager *dirmng = [DirectionsManager new];
        NSLog(@"%@", [dirmng directionNameFor:DirectionNorth]);
        NSLog(@"%@", [dirmng directionNameFor:DirectionEast]);
        NSLog(@"%@", [dirmng directionNameFor:DirectionSouth]);
        NSLog(@"%@", [dirmng directionNameFor:DirectionWest]);
        
        Direction randomDirection = arc4random() % 4;
        NSLog(@"%@", [dirmng directionNameFor:randomDirection]);
        
        // MARK: Integer Types Information
        NSLog(@"%lu, %d, %d", sizeof(int), INT_MIN, INT_MAX);
        //for min/max use limits.h (go to definition of INT_MIN or INT_MAX above) like LLONG_MAX
        
        // MARK: Pass Argument by reference
        SampleErrorCatchingClass *ecc = [SampleErrorCatchingClass new];
        NSError* error = nil;
        
        [ecc someUsefulFunction:-5 error:&error];
        NSLog(@"%@", error.domain);
        
        [ecc someUsefulFunction:3 error:&error];
        NSLog(@"%@", error.domain);
        
        [ecc someUsefulFunction:21 error:&error];
        NSLog(@"%@", error.domain);
    }
    return 0;
}
