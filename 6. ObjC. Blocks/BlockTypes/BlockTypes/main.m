//
//  main.m
//  BlockTypes
//
//  Created by Źmicier Fiedčanka on 24.05.21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //MARK: Global Block
        void (^globalBlock)(void) = ^{
            NSLog(@"Global block doing stuff");
        };
        
        globalBlock();
        NSLog(@"%@", [globalBlock class]);
        
        //MARK: Stack Block
        int staticValue = 10;
        __block int nonstaticValue = 20;
        NSString *(^stackBlock)(int) = ^(int num) {
            nonstaticValue = 7;
            return [[NSString stringWithFormat:@"Stack block go number %d and captured static value %d. Nonstatic changed to %d.", num, staticValue, nonstaticValue] autorelease];
        };
        
        NSLog(@"%@", stackBlock(5));
        NSLog(@"%@", [stackBlock class]);
        
        //MARK: Malloc Block
        NSString *(^mallocBlock)(int) = [stackBlock copy];
        NSLog(@"%@", [mallocBlock class]);
        [mallocBlock release];
    }
    
    
    //MARK: - Theory
    ///Блок захватывает тот контекст, в котором он определён. Расположение блока в памяти зависит от кого контекста, который он захватывает.
    ///Global block capures no or only static variables
    ///Stack block will live only as long as context where it's been created lives, so it may cause crashes when passing block as parameter occurs, thats why we use Malloc (Heap) Blocks too
    ///Malloc block lives in heap :)
    
    return 0;
}
