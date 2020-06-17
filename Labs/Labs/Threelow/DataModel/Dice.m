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
        _dictionary = [[NSDictionary alloc] initWithObjectsAndKeys: @"⚀", [NSNumber numberWithInt: 1],
        @"⚁", [NSNumber numberWithInt: 2], @"⚂", [NSNumber numberWithInt: 3],
        @"⚃", [NSNumber numberWithInt: 4], @"⚄", [NSNumber numberWithInt: 5],
        @"⚅", [NSNumber numberWithInt: 6], nil];
        _currentValue = arc4random_uniform(6) + 1;
    }
    return self;
}

@end
