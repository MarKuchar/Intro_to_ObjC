//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-17.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (NSUInteger) sizeOfPizza {
    switch (_size) {
        case Small:
            return 30;
        case Medium:
           return 30;
        case Large:
            return 30;
    }
}

- (NSArray *) toppingOnPizza {
    return NULL;
}

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings {
    if (self = [super init]) {
        _size = size;
        [self sizeOfPizza];
    }
    return self;
}

@end
