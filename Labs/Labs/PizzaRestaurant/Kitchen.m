//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    return [[Pizza alloc] initWithSize:size andToppings:toppings];
}

- (Pizza *)makeCustomPizza:(PizzaSize)size customtype:(NSString *) customPizza {
    if ([customPizza isEqualToString:@"pepperoni"]) {
        return [Pizza largePepperoni];
    } else if ([customPizza isEqualToString:@"meatlovers"]) {
        NSLog(@"%@", [Pizza meatLoversWithSize:size]);
        return [Pizza meatLoversWithSize:size];
    }
    return NULL;
}

@end
