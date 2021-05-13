//
//  Boss.h
//  DelegatePatternMRC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>
#import "DoStuffDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Boss : NSObject

@property(nonatomic, assign) id<DoStuffDelegate> delegate; //"assign --> retain" to create retain cycle
@property(nonatomic, retain, nullable) NSString* mood;

- (void)setMood:(NSString *)mood;

@end

NS_ASSUME_NONNULL_END
