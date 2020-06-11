//
//  main.m
//  Lab9
//
//  Created by Martin Kuchar on 2020-06-11.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *greeter = [[Greeter alloc] init];
        FriendlyGreetingDecider *greetingDecider = [[FriendlyGreetingDecider alloc] init];
        greeter.delegate = greetingDecider;
        
        
    }
    return 0;
}
