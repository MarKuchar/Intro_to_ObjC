//
//  StripePaymentService.m
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(int)amount {
    NSLog(@"Stripe processed amount $%d", amount);
}

- (BOOL)canProcessPayment {
    return (arc4random_uniform(2) == 1) ? YES : NO;
}


@end
