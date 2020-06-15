//
//  Dice.h
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, DiceValue) {
    one,
    two,
    three,
    four,
    five,
    six,
};

@interface Dice : NSObject

@property (nonatomic) DiceValue currentValue;

@end

NS_ASSUME_NONNULL_END
