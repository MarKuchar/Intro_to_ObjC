//
//  main.m
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc] init];
        NSString *setOfDice = [NSString new];
        NSUInteger rollCount = 0;
        
        while (1) {
            NSString *input = [gameController userInput:@"Enter the option:\n'roll', 'hold', 'reset', 🤫 rolll 🤫"];
            setOfDice = @"";
            if ([input isEqualToString:@"roll"]) {
                rollCount += 1;
                for (Dice* dice in gameController.dice) {
                    if (rollCount == 5) {
                        setOfDice = [setOfDice stringByAppendingFormat:@"[%@] ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                    } else if ([gameController.setHeldDice containsObject:[NSString stringWithFormat:@"%lu", [gameController.dice indexOfObject:dice]]]) {
                        setOfDice = [setOfDice stringByAppendingFormat:@"[%@] ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                    } else {
                        [dice randomizeDiceValue];
                        setOfDice = [setOfDice stringByAppendingFormat:@"%@ ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                    }
                }
                if (rollCount == 5) {
                    printf("\n*****GAME OVER*****\n");
                    printf("\n%s\nFinal Score -----------> %lu\nTotal number of rolls -> %lu\n\n",
                           [setOfDice UTF8String], gameController.countScore, rollCount);
                    break;
                }
                printf("\n%s\nCurrent score ---> %lu\nNumber of rolls -> %lu\n\n", [setOfDice UTF8String], gameController.countScore, rollCount);
            } else if ([input isEqualToString:@"hold"]) {
                NSString *heldDie = [gameController userInput:@"Enter die to be held."];
                [gameController holdDie:[heldDie intValue]];
            } else if ([input isEqualToString:@"reset"]) {
                [gameController resetDice];
                rollCount = 0;
            } else if ([input isEqualToString:@"rolll"]) {
                for (Dice* dice in gameController.dice) {
                    dice.currentValue = 1;
                    setOfDice = [setOfDice stringByAppendingFormat:@"[%@] ", [dice.dictionary objectForKey: [NSNumber numberWithLong:dice.currentValue]]];
                }
                printf("\n*****GAME OVER*****\n");
                printf("\n%s\nFinal Score -----------> %lu\nTotal number of rolls -> %lu\n\n",
                       [setOfDice UTF8String], gameController.countScore, rollCount);
            }
        }
    }
    return 0;
}
