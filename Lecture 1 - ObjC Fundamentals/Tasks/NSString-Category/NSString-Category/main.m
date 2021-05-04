//
//  main.m
//  NSString-Category
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "NSString+RSTaskable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Test String\nContaining newline separator.";
        
        NSLog(@"\nOriginal NSSString: %@\nNSString isEmpty? %@\nReversed NSSString: %@\nWords count: %lu\n",
              str,
              [str isEmpty] ? @"YES" : @"NO",
              [str reversed],
              (unsigned long)[str wordsCount]
        );
    }
    return 0;
}
