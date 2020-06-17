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
        GameController *gameController = [[GameController alloc] init];
        NSString *diceSet = [NSString new];
        NSUInteger rollCount = 0;
        
        while (1) {
            NSString *input = [gameController userInput:@"Enter the option."];
            diceSet = @"";
            if ([input isEqualToString:@"roll"]) {
                rollCount += 1;
                for (Dice* dice in gameController.dice) {
                    if (rollCount == 5) {
                        diceSet = [diceSet stringByAppendingFormat:@"[%@] ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                    } else if ([gameController.setHeldDice containsObject:[NSString stringWithFormat:@"%lu", [gameController.dice indexOfObject:dice]]]) {
                        diceSet = [diceSet stringByAppendingFormat:@"[%@] ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                    } else {
                        [dice randomizeDiceValue];
                        diceSet = [diceSet stringByAppendingFormat:@"%@ ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                    }
                }
                if (rollCount == 5) {
                    printf("\n*****GAME OVER*****\n");
                    printf("\n%s\nFinal Score -----------> %lu\nTotal number of rolls -> %lu\n\n",
                           [diceSet UTF8String], gameController.countScore, rollCount);
                    break;
                }
                printf("\n%s\nCurrent score ---> %lu\nNumber of rolls -> %lu\n\n", [diceSet UTF8String], gameController.countScore, rollCount);
            } else if ([input isEqualToString:@"hold"]) {
                NSString *heldDie = [gameController userInput:@"Enter die to be held."];
                [gameController holdDie:[heldDie intValue]];
            } else if ([input isEqualToString:@"reset"]) {
                [gameController resetDice];
                rollCount = 0;
            }
        }
    }
    return 0;
}
