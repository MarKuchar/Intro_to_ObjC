//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(int)amount {
    NSLog(@"Paypal processed amount $%d", amount);
}

- (BOOL)canProcessPayment {
    return (arc4random_uniform(2) == 1) ? YES : NO;
}


@end
