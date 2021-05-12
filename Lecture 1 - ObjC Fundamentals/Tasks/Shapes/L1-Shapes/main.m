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
        
        RSRectangle *rect2 = [[RSRectangle alloc] initWithSides:5 :2];
        RSRectangle *rect3 = [[RSRectangle alloc] initWithSides:3 :4];
        RSRectangle *rect4 = [[RSRectangle alloc] initWithSides:2 :5];
        
        NSLog(@"\nrect is equal to rect2? %s;\nTo rect3? %s;\nTo rect4? %s.", [rect isEqualToRectangle:rect2] ? "YES" : "NO", [rect isEqualToRectangle:rect3] ? "YES" : "NO", [rect isEqualToRectangle:rect4] ? "YES" : "NO");
        
        RSTriangle *trian = [[RSTriangle alloc] initWithSides:2 :3 :4];
        NSLog(@"Triangle: Area is %f, Perimeter is %f", [trian area], [trian perimeter]);
    }
    return 0;
}
