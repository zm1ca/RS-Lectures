#import <Foundation/Foundation.h>
#import "RSPerson.h"

int main(int argc, char **argv) {

    @autoreleasepool {
        RSPerson *object = [[RSPerson alloc] initWithName: @"Mike"];

        // First call
        clock_t start = clock();
        [object sayHello];

        clock_t end = clock();
        printf("First call: %lu\n", end - start);

        // Second call
        start = clock();
        [object sayHello];

        end = clock();
        printf("Second call: %lu\n", end - start);
    }

    return 0;
}