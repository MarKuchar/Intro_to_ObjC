//
//  QuestionManager.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-10.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init {
    if (self = [super init]) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) timeOutput {
    NSUInteger totalTime = 0;
    NSInteger averageTime = 0;
    for (int i = 0; i < [_questions count] - 1; i++) {
        totalTime += (int)[_questions objectAtIndex:i];
    }
    averageTime = totalTime / [_questions count];
    return [NSString stringWithFormat:@"Total time: %lu, Average time: %lu", (unsigned long)totalTime, averageTime];
}
    
@end
