//
//  RSListener.h
//  PostNotifications
//
//  Created by Źmicier Fiedčanka on 15.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RSListener : NSObject

@property (nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;
- (void)handle: (NSNotification *)notification;

@end

NS_ASSUME_NONNULL_END
