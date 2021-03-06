//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-18.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
#import "DeliveryDelegate.h"

@class Pizza;

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject<DeliveryDelegate>

@property NSMutableArray *deliveredPizzas;
- (void) deliverPizza:(Pizza *)pizza;

- (NSArray *)pizzaDescriptions;

@end

NS_ASSUME_NONNULL_END
