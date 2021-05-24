//
//  main.m
//  ObjectDeallocation
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>
#import "WeakReferencer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        WeakReferencer *obj = [WeakReferencer new];
        
        @autoreleasepool {
            NSString *str = [NSString stringWithFormat:@"%d, Test string", 42];
            [str retain];
            
            obj.string = str;
            [str release];
            
            NSLog(@"%s", obj.string != nil ? "exists" : "deallocated");
        }
        NSLog(@"%s", obj.string != nil ? "exists" : "deallocated");
    }
    
    return 0;
}
