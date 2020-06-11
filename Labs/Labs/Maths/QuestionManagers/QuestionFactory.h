//
//  QuestionFactory.h
//  Maths
//
//  Created by Martin Kuchar on 2020-06-10.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubclasses;

- (NSString *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
