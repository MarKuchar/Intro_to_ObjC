//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-17.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza {
    NSInteger _size;
    NSArray *_toppings;
}


- (NSInteger) sizeOfPizza: (PizzaSize) pizzaSize {
    switch (pizzaSize) {
        case Small:
            return 8;
        case Medium:
            return 10;
        case Large:
            return 12;
    }    
}

- (NSArray *) toppingOnPizza {
    return NULL;
}

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings {
    if (self = [super init]) {
        _size = [self sizeOfPizza: size];
        _toppings = toppings;
    }
    return self;
}

+(Pizza *)largePepperoni {
    return [[Pizza alloc] initWithSize:Large andToppings:[NSArray arrayWithObjects: @"Pepperoni", @"Cheese", nil]];
}

+(Pizza *)meatLoversWithSize: (PizzaSize)size {
    return [[Pizza alloc] initWithSize:size andToppings:[NSArray arrayWithObjects: @"Grind Beef", @"Chicken", @"Bacon", nil]];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Pizza with %lu size and toppings: %@", _size, _toppings];
}

+ (PizzaSize)sizeFromString: (NSString *) stringSize {
    if ([stringSize isEqualToString:@"Small"]) {
        return Small;
    } else if ([stringSize isEqualToString:@"Medium"]) {
        return Medium;
    } else {
        return Large;
    }
}

@end
