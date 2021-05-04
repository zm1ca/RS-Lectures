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
        
        RSCircle *circ = [[RSCircle alloc] initWithRadius:1];
        NSLog(@"Circle Area is %f, Perimeter is %f", [circ area], [circ perimeter]);
        
        RSRectangle *rect = [[RSRectangle alloc] initWithSides:2 :5];
        NSLog(@"Rectangle Area is %f, Perimeter is %f", [rect area], [rect perimeter]);
        
        RSTriangle *trian = [[RSTriangle alloc] initWithSides:2 :5 :3];
        NSLog(@"Triangle: Area is %f, Perimeter is %f", [trian area], [trian perimeter]);
    }
    return 0;
}
