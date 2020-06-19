//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-18.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "NiceManager.h"

@implementation NiceManager {
    DeliveryService *_deliveryService;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryService = [DeliveryService new];
    }
    return self;
}

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return true;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Becasue you are local, you are being upgraded!");
}



@end
