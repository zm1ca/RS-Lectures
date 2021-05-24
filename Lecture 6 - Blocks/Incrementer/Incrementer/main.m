//
//  main.m
//  Incrementer
//
//  Created by Źmicier Fiedčanka on 24.05.21.
//

#import <Foundation/Foundation.h>

typedef NSInteger(^IncrementerType)(void);

@interface Incrementer : NSObject

+ (IncrementerType)makeIncrementerForIncrementAmount:(NSInteger)amount;

@end

@implementation Incrementer

+ (IncrementerType)makeIncrementerForIncrementAmount:(NSInteger)amount {
    
    __block NSInteger value = 0;
    IncrementerType incrementer = ^{
        value += amount;
        return value;
    };
    
    return incrementer;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        IncrementerType inc = [Incrementer makeIncrementerForIncrementAmount:3];
        IncrementerType inc1 = [Incrementer makeIncrementerForIncrementAmount:1];
        for (int i = 0; i < 10; i++) {
            NSLog(@"by 3: %ld", (long)inc());
            NSLog(@"by 1: %ld", (long)inc1());
        }
    }
    return 0;
}
