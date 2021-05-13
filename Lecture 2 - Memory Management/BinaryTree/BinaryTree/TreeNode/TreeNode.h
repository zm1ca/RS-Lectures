//
//  TreeNode.h
//  BinaryTree
//
//  Created by Źmicier Fiedčanka on 5.05.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeNode<TreeNodeValueType> : NSObject

@property(nonatomic, retain) TreeNodeValueType value;
@property(nonatomic, retain, nullable) TreeNode *leftNode;
@property(nonatomic, retain, nullable) TreeNode *rightNode;

- (instancetype)initWithValue:(TreeNodeValueType)value;
+ (instancetype)treeNodeWithValue:(TreeNodeValueType)value;
- (NSString*)description;

@end

NS_ASSUME_NONNULL_END
