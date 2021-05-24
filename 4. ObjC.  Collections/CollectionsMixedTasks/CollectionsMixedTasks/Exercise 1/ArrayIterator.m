//
//  ArrayIterator.m
//  CollectionsMixedTasks
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "ArrayIterator.h"

@implementation ArrayIterator

+ (void)execute {
    NSArray *givenArray = @[@1, @2, @3, @4, @5];
    
    //c-style for loop
    NSLog(@"**********  C-Style **********");
    for (int i = 0 ; i < givenArray.count; ++i) {
        NSLog(@"%@", givenArray[i]);
    }
    
    //NSEnumerator
    NSLog(@"**********  NSEnumerator **********");
    NSEnumerator *enumerator = [givenArray objectEnumerator];
    NSNumber *number;
    while (number = [enumerator nextObject]) {
        NSLog(@"%@", number);
    }
    
    //block
    NSLog(@"**********  Block **********");
    [givenArray enumerateObjectsUsingBlock:^(NSNumber* obj, NSUInteger index, BOOL *stop) {
        NSLog(@"%@", obj);
        
        //Why its' useful:
        NSNumber *numberToLookFor = @6; //@6 -> @4 to test
        if ([obj isEqualToNumber:numberToLookFor]) {
            *stop = YES;
            NSLog(@"Index of %@ is %lu", numberToLookFor, index);
        }
    }];
    
    //forin
    NSLog(@"**********  For-In **********");
    for (NSNumber *number in givenArray) {
        NSLog(@"%@", number);
    }
    
    //forin: reversed
    NSLog(@"**********  For-In: Reversed **********");
    for (NSNumber* number in [givenArray reverseObjectEnumerator]) {
        NSLog(@"%@", number);
    }
    
    //forin: dropping last
    NSLog(@"**********  For-In: Dropping First **********");
    for (NSNumber *number in givenArray) {
        //FIXME: check if there is any syntaxic sugar
        if (number == givenArray.firstObject) {
            continue;
        }
        
        NSLog(@"%@", number);
    }
    
    //forin: dropping first
    NSLog(@"**********  For-In: Dropping Last **********");
    for (NSNumber *number in givenArray) {
        //FIXME: check if there is any syntaxic sugar
        if (number == givenArray.lastObject) {
            break;
        }
        
        NSLog(@"%@", number);
    }
}

@end
