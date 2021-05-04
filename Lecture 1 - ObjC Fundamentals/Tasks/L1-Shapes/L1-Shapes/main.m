//
//  main.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSCircle.h"
#import "RSRectangle.h"
#import "RSTriangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        RSTriangle* obj = [RSTriangle triangleWithSides:1 :3 :4];
        RSCircle* circ = [RSCircle circleWithRadius:5];
        RSCircle* circ2 = [RSCircle circleWithRadius:10];
        
        NSLog(@"1 %@", [circ isEqual:obj] ? @"YES" : @"NO");
        NSLog(@"2 %@", [circ isEqual:circ2] ? @"YES" : @"NO");
    }
    return 0;
}
