//
//  PostAccountObserver.h
//  ObserveComputedProperty
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>
#import "PostAccount.h"

NS_ASSUME_NONNULL_BEGIN

static void * PostAccountObservingDetailsContext = &PostAccountObservingDetailsContext;

@interface PostAccountObserver : NSObject

- (void) registerAsObserverForPostAccount:(PostAccount *)account;
- (void) stopObservingPostAccount:(PostAccount *)account;

@end

NS_ASSUME_NONNULL_END
