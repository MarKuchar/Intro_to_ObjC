//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Martin Kuchar on 2020-06-17.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (PizzaSize) sizeOfPizza: (NSString *) stringPizzaSize {
    if ([stringPizzaSize isEqualToString:@"Small"]) {
        return Small;
    } else if ([stringPizzaSize isEqualToString:@"Medium"]) {
        return Medium;
    } else if ([stringPizzaSize isEqualToString:@"Large"]) {
        return Large;
    } else {
        return NULL;
    }
    
}

- (NSArray *) toppingOnPizza {
    return NULL;
}

- (instancetype)initWithSize: (NSString *) size andToppings: (NSArray *) toppings {
    if (self = [super init]) {
        _size = [self sizeOfPizza: size];
        _toppings = toppings;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Pizza with %lu size and toppings: %@", _size, _toppings];
}

@end
