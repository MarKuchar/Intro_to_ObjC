//
//  GameController.m
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init {
    if (self = [super init]) {
        Dice *first = [[Dice alloc] init];
        Dice *second = [[Dice alloc] init];
        Dice *third = [[Dice alloc] init];
        Dice *fourth = [[Dice alloc] init];
        Dice *fifth = [[Dice alloc] init];
        Dice *sixth = [[Dice alloc] init];
        _dice = @[first, second, third, fourth, fifth, sixth];
        _setHeldDice = [NSMutableSet new];
    }
    return self;
}

- (void) holdDie: (NSInteger) dice {
    if ([_setHeldDice containsObject:[NSString stringWithFormat:@"%lu", dice - 1]]) {
        [_setHeldDice removeObject:[NSString stringWithFormat:@"%lu", dice - 1]];
    } else {
        [_setHeldDice addObject:[NSString stringWithFormat:@"%lu", dice - 1]];
    }
}

- (NSUInteger) countScore {
    _score = 0;
    for (Dice *dice in _dice) {
        _score += dice.currentValue;
    }
    return _score;
}

- (NSString *) userInput: (NSString *) promt {
    char arrayOfChar[255];
    printf("%s\n", [promt UTF8String]);
    fgets(arrayOfChar, 255, stdin);
    NSString *input = [[NSString stringWithUTF8String:arrayOfChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

- (void) resetDice {
    [_setHeldDice removeAllObjects];
}

@end
