//
//  GreeterDelegate.h
//  Lab9
//
//  Created by Martin Kuchar on 2020-06-11.
//  Copyright © 2020 Martin Kuchar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate <NSObject>

- (BOOL) shouldSayHello;

@end

NS_ASSUME_NONNULL_END
