//
//  GameController.h
//  Threelow
//
//  Created by Martin Kuchar on 2020-06-15.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dice;

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic) NSArray *dices;
@property (nonatomic) NSMutableArray *holdDices;


@end

NS_ASSUME_NONNULL_END
