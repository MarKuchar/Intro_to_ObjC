//
//  QuestionFactory.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-10.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "QuestionFactory.h"
@class Question;

@implementation QuestionFactory

- (instancetype)init {
    if (self = [super init]) {
        _questionSubclasses = @[@"AdditionalQuestion", @"SubtractionQuestion"];
    }
    return self;
}

- (NSString *) generateRandomQuestion {
    NSInteger index = arc4random_uniform(2);
    return [_questionSubclasses objectAtIndex:index];
}

@end
