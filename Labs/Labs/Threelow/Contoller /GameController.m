//
//  GameController.m
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (void) holdDie: (NSInteger *) dice {
    Dice *heldDice = [_dice objectAtIndex: (long)dice];
    [_dictionaryHeldDice setObject:[NSString stringWithFormat:@"[%lu]", heldDice.currentValue] forKey:[NSNumber numberWithInteger: (long) dice]];
}

@end
