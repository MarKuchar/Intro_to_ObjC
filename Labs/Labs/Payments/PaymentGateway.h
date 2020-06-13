//
//  PaymentGateway.h
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount: (int) amount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;
- (void) processPaymentAmount: (int) amount;

@end

NS_ASSUME_NONNULL_END
