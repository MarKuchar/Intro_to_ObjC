//
//  main.m
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *first = [[Dice alloc] init];
        Dice *second = [[Dice alloc] init];
        Dice *third = [[Dice alloc] init];
        Dice *fourth = [[Dice alloc] init];
        Dice *fifth = [[Dice alloc] init];
        Dice *sixth = [[Dice alloc] init];
        
        GameController *gameController = [[GameController alloc] init];
        gameController.dice = @[first, second, third, fourth, fifth, sixth];

        NSString *diceSet = [NSString new];
        
        while (1) {
            NSString *input = [gameController userInput:@"Enter the option."];
            diceSet = @"";
            
            if ([input isEqualToString:@"roll"]) {
                for (Dice* dice in gameController.dice) {
                        
                    if ([gameController.setHeldDice containsObject:[NSString stringWithFormat:@"%lu", [gameController.dice indexOfObject:dice]]]) {
                        diceSet = [diceSet stringByAppendingFormat:@"[%lu] ", dice.currentValue];
                    } else {
                        [dice randomizeDiceValue];
                        diceSet = [diceSet stringByAppendingFormat:@"%lu ", dice.currentValue];
                    }
                }
                printf("%s  ----> current score:%lu\n", [diceSet UTF8String], gameController.countScore);
            } else if ([input isEqualToString:@"hold"]) {
                NSString *heldDie = [gameController userInput:@"Enter die to be held."];
                [gameController holdDie:[heldDie intValue]];
            }
        }
    }
    return 0;
}
