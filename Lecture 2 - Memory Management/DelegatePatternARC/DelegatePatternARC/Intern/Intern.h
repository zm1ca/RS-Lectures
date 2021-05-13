//
//  Intern.h
//  DelegatePatternARC
//
//  Created by Źmicier Fiedčanka on 12.05.21.
//

#import <Foundation/Foundation.h>
#import "DoStuffDelegate.h"
#import "Boss.h"

NS_ASSUME_NONNULL_BEGIN

@interface Intern : NSObject <DoStuffDelegate>

@property(nonatomic, strong) Boss* boss;

- (instancetype)initWithBoss:(Boss *)boss;

@end

NS_ASSUME_NONNULL_END
