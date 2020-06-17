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
    }
    return self;
}

- (void) holdDie: (NSInteger) dice {
    Dice *heldDice = [_dice objectAtIndex: dice - 1];
    [_setHeldDice addObject:[NSString stringWithFormat:@"%lu", dice - 1]];
//    [_dictionaryHeldDice setObject:[_dice objectAtIndex: dice - 1] forKey:[NSNumber numberWithLong: dice]];
    if (_setHeldDice) {
        NSLog(@"%lu", [_setHeldDice count]);
    }
}

- (NSUInteger) countScore {
    _score = 0;
    for (Dice *dice in _dice) {
        _score += dice.currentValue;
    }
    return _score;
}

- (NSString) userInput {
    
}

@end
