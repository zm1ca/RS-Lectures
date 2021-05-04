//
//  main.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "RSShape.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        RSShape* object = [RSShape new];
        RSShape* object2 = [RSShape new];
        
        NSLog(@"%@", [object description]);
        NSLog(@"%@", [object2 description]);
    }
    return 0;
}
