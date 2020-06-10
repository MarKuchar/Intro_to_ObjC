//
//  AdditionQuestion.h
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (nonatomic) NSUInteger answer;
@property (nonatomic) NSString *question;

//+ (NSString *) randomQuestion;
- (void) compareAnswer: (NSString *) answer andResult: (NSString *) result;

@end

NS_ASSUME_NONNULL_END
