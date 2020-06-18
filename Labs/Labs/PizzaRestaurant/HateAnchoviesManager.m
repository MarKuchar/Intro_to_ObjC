//
//  HateAnchoviesManager.m
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-18.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "HateAnchoviesManager.h"

@implementation HateAnchoviesManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return ([toppings containsObject:@"anchovies"]) ? true : false;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return false;
}

@end
