//
//  AdditionQuestion.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Question.h"
#import "UserInput.h"

@implementation Question

- (instancetype)init {
if (self = [super init]) {
    _rightValue = arc4random_uniform(100);
    _leftValue = arc4random_uniform(100);
    _question = [NSString stringWithFormat:@"%lu + %lu = ?", _leftValue, _rightValue];
    _answer = _leftValue + _rightValue;
    _startTime = [NSDate date];
}
return self;
}

- (NSUInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (bool) compareAnswer: (NSString *) answer andResult: (NSString *) result {
    if ([answer isEqualToString:result]) {
        NSLog(@"Correct");
        return true;
    } else {
        NSLog(@"Wrong!");
        return false;
    }
}

- (NSTimeInterval) answerTime {
    NSTimeInterval timeInterval = [_endTime timeIntervalSinceDate: _startTime];
    return timeInterval;
}

- (void) generateQuestion {}

@end
