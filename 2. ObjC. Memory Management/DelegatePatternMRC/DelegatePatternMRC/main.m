//
//  main.m
//  DelegatePatternMRC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Intern.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boss *boss = [[Boss alloc] init];
        Intern *intern = [[Intern alloc] initWithBoss:boss];
        boss.mood = @"Stressed";
        
        [boss release];
        [intern release];
    }
    return 0;
}
