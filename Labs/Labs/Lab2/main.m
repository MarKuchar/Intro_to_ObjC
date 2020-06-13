//
//  main.m
//  Lab2
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *myBox = [[Box alloc] initWithHeight:10 width:10 andLength:10];
        NSLog(@"%f", [myBox calculateVolume]);
        NSLog(@"%f", [myBox fitInside: [[Box alloc] initWithHeight:5 width:5 andLength:5]]);
    }
    return 0;
}
