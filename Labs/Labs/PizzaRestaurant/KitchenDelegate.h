//
//  KitchenDelegate.h
//  Labs
//
//  Created by Martin Kuchar on 2020-06-17.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

@protocol KitchenDelegate <NSObject>



- (BOOL) kitchen:(Kitchen *)kitchenshouldMakePizzaOfSize:(PizzaSize) size andToppings:(NSArray*) toppings;
- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void) kitchenDidMakePizza:(Pizza *)pizza;
