//
//  ScoreKeeper.h
//  Maths
//
//  Created by Martin Kuchar on 2020-06-09.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic) NSUInteger right;
@property (nonatomic) NSUInteger wrong;
- (NSString *) countScore;

@end

NS_ASSUME_NONNULL_END
