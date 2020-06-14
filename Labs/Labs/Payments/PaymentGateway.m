//
//  PaymentGateway.m
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (int) amount {
    if ([_paymentDelegate canProcessPayment]) {
        [_paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"I apology the payment be processed.");
    }
}

@end
