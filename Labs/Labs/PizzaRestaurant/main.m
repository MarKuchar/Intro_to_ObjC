//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "HateAnchoviesManager.h"
#import "NiceManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *deliveryService = [DeliveryService new];
        restaurantKitchen.deliveryDelegate = deliveryService;
        NiceManager *niceManager = [NiceManager new];
        HateAnchoviesManager *hateAnchoviesManager = [HateAnchoviesManager new];
        
        while (TRUE) {
            // Loop forever
            NSString *inputString = [Kitchen waiter:@"Please pick your pizza size and toppings:"];
            NSLog(@"Input was %@", inputString);
            
            NSString *managerChoiceInputString = [Kitchen waiter:@"Please what manager do you want tu use?\n1. Nice Manager 2. Hate Anchovies Manager 3. No manager"];
            
            if ([managerChoiceInputString isEqualToString:@"1"]) {
                restaurantKitchen.kitchenDelegate = niceManager;
            } else if ([managerChoiceInputString isEqualToString:@"2"]) {
                restaurantKitchen.kitchenDelegate = hateAnchoviesManager;
            }
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
            PizzaSize size = [Pizza sizeFromString:[[commandWords objectAtIndex:0] capitalizedString]];
            
            // And then send some message to the kitchen...
            if ([inputString isEqualToString:@"pepperoni"]) {
                [restaurantKitchen makeCustomPizza:Large customtype:@"pepperoni"];
            } else if ([commandWords count] == 1) {
                NSLog(@"Incorrect input!");
            } else if ([[commandWords objectAtIndex:1] isEqualToString:@"meatlovers"]) {
                [restaurantKitchen makeCustomPizza:size customtype:@"meatlovers"];
            } else {
                [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            }
            
            NSLog(@"Description of delivered pizza:\n%@", [restaurantKitchen.deliveryDelegate pizzaDescriptions]);
        }

    }
    return 0;
}

