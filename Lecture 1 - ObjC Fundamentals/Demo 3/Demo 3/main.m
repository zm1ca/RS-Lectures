//
//  main.m
//  Demo 3
//
//  Created by Źmicier Fiedčanka on 3.05.21.
//

#import <Foundation/Foundation.h>
#import "RSCarPort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RSCarPort *carPort = [RSCarPort new];
        
        RSPassenger *captain = [[RSPassenger alloc] initWithName:@"Lenny"];
        RSCar *car = [[RSCar alloc] initWithCaptain:captain];
        
        [carPort launchCar:car];
        
        [carPort enter:captain];
        [carPort enter:car];
        
        [captain sayHello];
    }
    return 0;
}
