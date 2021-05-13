//
//  main.m
//  ObjectDeallocation
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = [NSString stringWithFormat:@"No%d test string", 1];
        NSLog(@"%@ created", str);
        
        NSString *literalStr = @"Literal String";
    }
    return 0;
}
