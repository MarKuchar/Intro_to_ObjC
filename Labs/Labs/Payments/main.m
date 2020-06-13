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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int value = arc4random_uniform(100) * 10;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        char userInput[255];
        char *inputChar = fgets(userInput, 255, stdin);
        if (inputChar) {
            NSInteger input = [[[NSString stringWithUTF8String:inputChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] integerValue];
            NSLog(@"%ld", input);
         
            PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
                   [paymentGateway processPaymentAmount:value];
            
            switch (input) {
                case 1:
                    {
                        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
                        paymentGateway.paymentDelegate = paypal;
                    }
                    break;
                case 2:
                    {
                        StripePaymentService *stripe = [[StripePaymentService alloc] init];
                    }
                case 3:
                    {
                        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
                    }
                default:
                    break;
            }
            
        }
        
    }
    return 0;
}
