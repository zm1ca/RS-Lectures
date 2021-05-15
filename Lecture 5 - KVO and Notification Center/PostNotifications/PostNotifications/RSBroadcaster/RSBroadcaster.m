//
//  RSBroadcaster.m
//  PostNotifications
//
//  Created by Źmicier Fiedčanka on 15.05.21.
//

#import "RSBroadcaster.h"

@implementation RSBroadcaster

- (void)post {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"handle" object:self];
    return;
}

@end
