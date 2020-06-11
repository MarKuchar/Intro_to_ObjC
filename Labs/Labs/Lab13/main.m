//
//  main.m
//  Lab13
//
//  Created by Martin Kuchar on 2020-06-10.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *myString = @"Chicago is the city in the north of USA";
        NSLog(@"%@", [myString stringByPigLatinization]);
    }
    return 0;
}
