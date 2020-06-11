//
//  main.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Maths!\n\n");
        ScoreKeeper *scorekeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (1) {
            Question *question = [[NSClassFromString([questionFactory generateRandomQuestion]) alloc] init];
            NSString* userGuess = [UserInput getUserInput:255 withMessage: [question question]];
            if ([userGuess isEqualToString:@"quit"]) {
                NSLog(@"%@", [scorekeeper countScore]);
                break;
            }
            [[questionManager questions] addObject:question];
            if ([question compareAnswer:[NSString stringWithFormat:@"%lu", [question answer]] andResult:userGuess]) {
                scorekeeper.right += 1;
            } else {
                scorekeeper.wrong += 1;
            }
        }
        NSLog(@"%lu", (unsigned long)[[questionManager questions] count]);
        NSLog(@"%@", [questionManager timeOutput]);
    }
    return 0;
}

