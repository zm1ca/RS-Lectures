//
//  main.m
//  PostNotifications
//
//  Created by Źmicier Fiedčanka on 15.05.21.
//

#import <Foundation/Foundation.h>
#import "RSBroadcaster.h"
#import "RSListener.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RSBroadcaster *b = [RSBroadcaster new];
        RSListener *l1 = [[RSListener alloc] initWithName:@"listener one"];
        RSListener *l2 = [[RSListener alloc] initWithName:@"listener two"];
        RSListener *l3 = [[RSListener alloc] initWithName:@"listener three"];
        [b post];
        RSListener *l4 = [[RSListener alloc] initWithName:@"listener four"];
        [b post];
    }
    return 0;
}
