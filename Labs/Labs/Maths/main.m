//
//  main.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

NSString *getUserInput(int length, NSString *promt) {
    if (length < 1) {
        length = 255;
    }
    NSLog(@"%@",promt);
    char userInputChars[length];
    char *result = fgets(userInputChars, length, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:userInputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (1) {
//            AdditionQuestion 
//            NSString *new = getUserInput(255, @"Functioning");
//            NSLog(@"%@", new);
        }
    }
    return 0;
}

