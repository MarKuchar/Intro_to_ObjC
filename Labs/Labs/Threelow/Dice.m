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
    return (DiceValue) arc4random_uniform(7);
}

@end
