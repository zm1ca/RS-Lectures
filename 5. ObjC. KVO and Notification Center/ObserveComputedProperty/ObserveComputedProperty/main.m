//
//  main.m
//  ObserveComputedProperty
//
//  Created by Źmicier Fiedčanka on 14.05.21.
//

#import <Foundation/Foundation.h>
#import "PostAccount.h"
#import "PostAccountObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PostAccount *pa = [[PostAccount alloc] initWithFirstName:@"Dzmitry"
                                                        lastName:@"Fedchanka"
                                                   streetAddress:@"Kirava, 51-140"
                                                        locality:@"Minsk"
                                                          region:@"Bielarus"
                                                      postalCode:220030];
        
        PostAccountObserver *observer = [PostAccountObserver new];
        [observer registerAsObserverForPostAccount:pa];
        
        pa.firstName = @"Yahor";
        pa.lastName = @"Liavonau";
        pa.streetAddress = @"Haharyna, 22-10";
        pa.locality = @"Maskva";
        pa.region = @"Rasija";
        pa.postalCode = 133921;     
        
        [observer stopObservingPostAccount:pa];
        
        pa.postalCode = 123456; //not observed anymore
    }
    return 0;
}
