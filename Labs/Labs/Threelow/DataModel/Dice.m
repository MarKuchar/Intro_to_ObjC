//
//  Dice.m
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (NSUInteger) randomizeDiceValue {
    _currentValue = arc4random_uniform(6) + 1;
    return _currentValue;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentValue = arc4random_uniform(6) + 1;
    }
    return self;
}

@end
