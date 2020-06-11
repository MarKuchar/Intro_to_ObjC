//
//  Charge.m
//  Lab9
//
//  Created by Martin Kuchar on 2020-06-11.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "Charge.h"

@implementation Charge

- (double)foodTruck:(nonnull FoodTruck *)truck priceForFood:(nonnull NSString *)food {
    if ([food isEqualToString:@"shortbread"]) {
        return 10;
    } else if ([food isEqualToString:@"bao"]) {
        return 15;
    }
    return 20;
}

@end
