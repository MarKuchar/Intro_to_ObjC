//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-18.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService {
    DeliveryCar *_deliveryCar;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryCar = [DeliveryCar new];
        _deliveredPizzas = [NSMutableArray new];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [_deliveredPizzas addObject:pizza];
    [_deliveryCar deliverPizza:pizza];
}

- (NSArray *)pizzaDescriptions {
    return _deliveredPizzas;
}

@end
