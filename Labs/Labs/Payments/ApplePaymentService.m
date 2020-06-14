//
//  ApplePaymentService.m
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (BOOL)canProcessPayment { 
    return (arc4random_uniform(2) == 1) ? YES : NO;
}

- (void)processPaymentAmount: (int)amount {
    NSLog(@"Apple Pay processed amount $%d", amount);
}

@end
