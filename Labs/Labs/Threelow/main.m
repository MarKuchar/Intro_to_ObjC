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
        
        NSMutableSet *setHeldDice = [[NSMutableSet alloc] init];
        

        NSString *diceSet = [NSString new];
        
        while (1) {
            char arrayOfChar[255];
            printf("Enter your option.\n");
            fgets(arrayOfChar, 255, stdin);
            NSString *input = [[NSString stringWithUTF8String:arrayOfChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            diceSet = @"";
            
            if ([input isEqualToString:@"roll"]) {
                for (Dice* dice in gameController.dice) {
                        
                    if ([setHeldDice containsObject:[NSString stringWithFormat:@"%lu", [gameController.dice indexOfObject:dice]]]) {
                        diceSet = [diceSet stringByAppendingFormat:@"[%lu] ", dice.currentValue];
                    } else {
                        [dice randomizeDiceValue];
                        diceSet = [diceSet stringByAppendingFormat:@"%lu ", dice.currentValue];
                    }
                }
            } else if ([input isEqualToString:@"hold"]) {
                printf("Enter die to be held.\n");
                fgets(arrayOfChar, 255, stdin);
                NSString *input = [[NSString stringWithUTF8String:arrayOfChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                [setHeldDice addObject:[NSString stringWithFormat:@"%@", input]];
                [gameController holdDie:[input intValue]];
            }
            NSLog(@"%lu", [setHeldDice count]);
            printf("%s\n", [diceSet UTF8String]);
        }
    }
    return 0;
}
