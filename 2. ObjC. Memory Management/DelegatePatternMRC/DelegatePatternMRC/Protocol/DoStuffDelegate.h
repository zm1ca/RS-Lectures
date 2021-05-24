//
//  DoStuffDelegate.h
//  DelegatePatternMRC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DoStuffDelegate <NSObject>

- (void)doStuff;

@end

NS_ASSUME_NONNULL_END
