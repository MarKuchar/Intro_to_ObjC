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
    if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        NSLog(@"Order was not confirmed.");
        return NULL;
    } else if ([_delegate kitchenShouldUpgradeOrder:self]) {
        Pizza *pizza = [[Pizza alloc] initWithSize:Large andToppings:toppings];
        if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [_delegate kitchenDidMakePizza:pizza];
        }
        NSLog(@"%@", pizza);
        return pizza;
    } else {
        Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [_delegate kitchenDidMakePizza:pizza];
        }
        NSLog(@"%@", pizza);
        return pizza;
    }
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

+ (NSString *)waiter: (NSString *) promt {
    NSLog(@"%@", promt);
    NSLog(@"> ");
    char str[100];
    fgets (str, 100, stdin);
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputString;
}

@end
