//
//  PostAccountObserver.m
//  ObserveComputedProperty
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import "PostAccountObserver.h"

@implementation PostAccountObserver

- (void)registerAsObserverForPostAccount:(PostAccount *)account {
    for (NSString *key in account.observingKeys) {
        [account addObserver:self
                  forKeyPath: key
                     options:(NSKeyValueObservingOptionNew |
                              NSKeyValueObservingOptionOld)
                     context:&PostAccountObservingDetailsContext]; //context:nil would cause problems in case the superclass observes the same object
    }
}


- (void)stopObservingPostAccount:(PostAccount *)account {
    for (NSString *key in account.observingKeys) {
        [account removeObserver:self
                     forKeyPath:key
                        context:&PostAccountObservingDetailsContext];
    }
}



- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    if (context == &PostAccountObservingDetailsContext) {
        NSLog(@"%@: %@ --> %@", keyPath, change[@"old"], change[@"new"]);
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

@end
