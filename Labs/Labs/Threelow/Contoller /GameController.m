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
    [_dictionaryHoldDice setObject:[_dice objectAtIndex: (long)dice] forKey:[NSString stringWithFormat:@"%lu", (long)dice]];
}

@end
