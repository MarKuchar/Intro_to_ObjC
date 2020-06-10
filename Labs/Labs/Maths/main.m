//
//  main.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "AdditionQuestion.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Maths!\n");
        while (1) {
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            NSString* userGuess = [UserInput getUserInput:255 withMessage: [question question]];
            if ([userGuess isEqualToString:@"quit"]) {
                break;
            }
            [question compareAnswer:[NSString stringWithFormat:@"%lu", [question answer]] andResult:userGuess];
        }
    }
    return 0;
}

