//
//  RSShape.m
//  L1-Shapes
//
//  Created by Źmicier Fiedčanka on 4.05.21.
//

#import "RSShape.h"

@implementation RSShape

- (float)area {
    return 0;
}

- (float)perimeter {
    return 0;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\nMemory adress: %p\nClass info: %@\nArea: %f\nPerimeter: %f\n", self, NSStringFromClass([self class]), self.area, self.perimeter];
}


@end
