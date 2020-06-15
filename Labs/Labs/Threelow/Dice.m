//
//  Dice.m
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (DiceValue) randomizeDiceValue {
    _currentValue = (DiceValue) arc4random_uniform(7);
    return _currentValue;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentValue = (DiceValue) arc4random_uniform(7);
    }
    return self;
}

@end
