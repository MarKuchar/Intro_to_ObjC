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
        gameController.dices = @[first, second, third, fourth, fifth, sixth];
        

        NSLog(@"%lu", first.currentValue);
        NSLog(@"%lu", second.currentValue);
        NSLog(@"%lu", third.currentValue);
        
        NSInteger play = 1;
        while (1) {
            char arrayOfChar[255];
            printf("Enter your option.\n");
            fgets(arrayOfChar, 255, stdin);
            NSString *input = [[NSString stringWithUTF8String:arrayOfChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([input isEqualToString:@"roll"]) {
                for (Dice* dice in gameController.dices) {
                    [dice randomizeDiceValue];
                    NSLog(@"%lu", dice.currentValue);
                }
            }
        }
    
    }
    return 0;
}
