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
        
        NSLog(@"%@", [obj description]);
    }
    return 0;
}
