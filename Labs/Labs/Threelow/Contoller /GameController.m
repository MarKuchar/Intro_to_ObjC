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
    [_setHeldDice addObject:[NSString stringWithFormat:@"%lu", dice]];
//    [_dictionaryHeldDice setObject:[_dice objectAtIndex: dice - 1] forKey:[NSNumber numberWithLong: dice]];
//    NSLog(@"%lu", [_setHeldDice count]);
}

@end
