//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Martin Kuchar on 2020-06-13.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject<PaymentDelegate>;

@end

NS_ASSUME_NONNULL_END
