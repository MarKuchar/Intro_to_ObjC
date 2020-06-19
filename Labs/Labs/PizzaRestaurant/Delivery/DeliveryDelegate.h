//
//  DeliveryDelegate.h
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-18.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pizza;

NS_ASSUME_NONNULL_BEGIN

@protocol DeliveryDelegate <NSObject>

- (void) deliverPizza:(Pizza *)pizza;

@optional

- (NSArray *)pizzaDescriptions;

@end

NS_ASSUME_NONNULL_END
