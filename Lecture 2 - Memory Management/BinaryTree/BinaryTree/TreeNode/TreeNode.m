//
//  TreeNode.m
//  BinaryTree
//
//  Created by Źmicier Fiedčanka on 5.05.21.
//

#import "TreeNode.h"

@implementation TreeNode

- (instancetype)initWithValue:(id)value {
    self = [super init];
    if (self) {
        _value = value;
        _leftNode = nil;
        _rightNode = nil;
    }
    return self;
}

+ (instancetype)treeNodeWithValue:(id)value {
    return [[[TreeNode alloc] initWithValue:value] autorelease];
}

/// Preoder as in: https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/
- (NSString *)description {
    NSString *description = [[NSString alloc] initWithFormat: @"%@", _value];
    
    if (_leftNode) {
        description = [[description autorelease] stringByAppendingFormat:@"%@", _leftNode.description];
        [description retain];
    }
    
    if (_rightNode) {
        description = [[description autorelease] stringByAppendingFormat:@"%@", _rightNode.description];
        [description retain];
    }
    
    return [description autorelease];
}

- (void)dealloc
{
    [_leftNode release];
    [_rightNode release];
    [super dealloc];
}

@end
