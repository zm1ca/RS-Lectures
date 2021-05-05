//
//  main.m
//  BinaryTree
//
//  Created by Źmicier Fiedčanka on 5.05.21.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TreeNode<NSString *> *a = [[TreeNode alloc] initWithValue:@"A"];
        TreeNode<NSString *> *b = [[TreeNode alloc] initWithValue:@"B"];
        TreeNode<NSString *> *c = [[TreeNode alloc] initWithValue:@"C"];
        TreeNode<NSString *> *d = [[TreeNode alloc] initWithValue:@"D"];
        TreeNode<NSString *> *e = [[TreeNode alloc] initWithValue:@"E"];
        
        a.leftNode  = b;
        a.rightNode = c;
        b.leftNode  = d;
        b.rightNode = e;
        
        NSLog(@"%@", a.description);
        
        [a release];
        [b release];
        [c release];
        [d release];
        [e release];
    }
    return 0;
}
