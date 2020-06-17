//
//  Dice.h
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic) NSUInteger currentValue;
@property (nonatomic) NSDictionary *dictionary;

- (NSUInteger) randomizeDiceValue;


@end

NS_ASSUME_NONNULL_END
