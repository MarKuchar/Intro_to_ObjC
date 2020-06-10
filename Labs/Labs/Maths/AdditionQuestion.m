//
//  AdditionQuestion.m
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

+ (NSString *) randomQuestion {
    NSUInteger firstNumber = arc4random_uniform(100);
    NSUInteger secondNumber = arc4random_uniform(100);
    NSInteger result = firstNumber + secondNumber;
    NSString* myNewString = [NSString stringWithFormat:@"%lu + %lu = ?", firstNumber, secondNumber];
    
    return myNewString;
}

@end
