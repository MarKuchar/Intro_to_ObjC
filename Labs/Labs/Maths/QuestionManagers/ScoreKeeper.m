//
//  ScoreKeeper.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *) countScore {
    if (_right + _wrong != 0) {
        NSUInteger result = 100 / (_right + _wrong) * _right;
        return [NSString stringWithFormat:@"Score: %lu right, %lu wrong ----> %lu%%", (unsigned long)_right, _wrong, result];
    }
    return @"No answer!";
}

@end
