//
//  AdditionalQuestion.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-10.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "AdditionalQuestion.h"

@implementation AdditionalQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    self.answer = self.leftValue + self.rightValue;
    self.question = [NSString stringWithFormat: @"%lu + %lu = ?", self.leftValue, self.rightValue];
}


@end
