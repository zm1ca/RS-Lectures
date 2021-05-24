//
//  main.m
//  DelegatePatternARC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Intern.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boss *boss = [Boss new];
        Intern *intern = [[Intern alloc] initWithBoss:boss];
        boss.mood = @"Stressed";
    }
    return 0;
}
