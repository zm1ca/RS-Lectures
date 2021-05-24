//
//  WeakReferencer.h
//  ObjectDeallocation
//
//  Created by Źmicier Fiedčanka on 22.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeakReferencer : NSObject

@property (weak) NSString *string;

@end

NS_ASSUME_NONNULL_END
