//
//  AdditionQuestion.h
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) NSUInteger answer;
@property (nonatomic) NSString *question;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property (nonatomic) NSUInteger rightValue;
@property (nonatomic) NSUInteger leftValue;

//+ (NSString *) randomQuestion;
- (bool) compareAnswer: (NSString *) answer andResult: (NSString *) result;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end

NS_ASSUME_NONNULL_END
