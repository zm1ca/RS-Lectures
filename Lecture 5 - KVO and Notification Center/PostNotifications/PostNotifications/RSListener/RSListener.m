//
//  RSListener.m
//  PostNotifications
//
//  Created by Źmicier Fiedčanka on 15.05.21.
//

#import "RSListener.h"

@implementation RSListener

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handle:) name:@"handle" object:nil];
    }
    return self;
}

- (void)handle: (NSNotification *)notification {
    NSLog(@"%@ received notification", _name);
    NSLog(@"%@", notification.object);
    return;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
