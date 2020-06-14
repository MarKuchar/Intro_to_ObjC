//
//  main.m
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

void setDelegate (NSString* paymentService, PaymentGateway* paymentGateway, NSUInteger amount) {
    id service = [[NSClassFromString(paymentService) alloc] init];
    paymentGateway.paymentDelegate = service;
    [paymentGateway processPaymentAmount: amount];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger value = arc4random_uniform(100) * 10;
        NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", value);
        char userInput[255];
        char *inputChar = fgets(userInput, 255, stdin);
        if (inputChar) {
            NSInteger input = [[[NSString stringWithUTF8String:inputChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] integerValue];
            NSLog(@"%ld", input);
         
            PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
            
            switch (input) {
                case 1:
                    setDelegate(@"PaypalPaymentService", paymentGateway, value);
                    break;
                case 2:
                    setDelegate(@"StripePaymentService", paymentGateway, value);
                    break;
                case 3:
                    setDelegate(@"AmazonPaymentService", paymentGateway, value);
                    break;
                case 4:
                    setDelegate(@"ApplePaymentService", paymentGateway, value);
                    break;
                default:
                    NSLog(@"Incorrect input!");
                    break;
            }
        }
    }
    return 0;
}
